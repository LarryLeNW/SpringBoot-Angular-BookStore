let urlAccount = "/admin/rest/accounts";
app.controller("user-ctrl", function($scope, $http) {
	$scope.accounts = [];
	$scope.account = {username : "lsdjfsldf"};
	$scope.chon = false;
	//get danh sach accounts
	$http.get(urlAccount).then(resp => {
		$scope.accounts = resp.data;
		console.log(resp.data);
	});
	
	
	//get 1 Account
	$scope.edit = function(id) {
		var url = `${urlAccount}/${id}`;
		$http.get(url).then(resp => {
			$scope.account = resp.data;
			$scope.chon = true;
		}).catch(error => {
			if (error.status == 404) {
				alert("Not Exist accounts " + id);
			}
		});
	};


	//upload img
	$scope.imageChanged = function(files) {
		var url = "/admin/rest/upload/account"
		var form = new FormData();
		form.append("file", files[0]);
		$http.post(url, form, {
			transformRequest: angular.identity,
			headers: { 'Content-Type': undefined }
		}).then(resp => {
			$scope.account.photo = resp.data.filename;
		}).catch(error => {
			alert("Upload Photo Fail")
			console.log("error", error);
		});
	};
	//update account
	$scope.update = function(id) {
		var url = `${urlAccount}/${id}`;
		var data = angular.copy($scope.account);
		var index = $scope.accounts.findIndex(a => a.id == id);
		$http.put(url, data).then(resp => {
			$scope.accounts[index] = resp.data;
			alert("Update Account Success")
		}).catch(error => {
			if (error.status == 404) {
				alert("Not Exist Account id : " + id);
			}
		});
	};
	
	
	//tao account
	$scope.create = function() {
		var data = angular.copy($scope.account);
		$http.post(urlAccount, data).then(resp => {
			$scope.accounts.push(resp.data);
			alert("Create Account Success")
			$scope.reset();
		}).catch(error => {
			if (error.status == 400) {
				alert("Existed Account " + data.username);
			}
			console.log("error ", error);
		});
	};
	//Rest khi load, khi tao moi thanh cong, khi delete, khi click btn reset
	$scope.reset = function() {
		$scope.account = {
			activated: true,
			photo: "logo.jpg"
		};
		$scope.chon = false;
	}
	
	
	//Xoa account
	$scope.delete = function(id) {
		var url = `${urlAccount}/${id}`;
		$http.delete(url).then(resp => {
			var index = $scope.accounts.findIndex(a => a.id == id);
			$scope.accounts.splice(index, 1);
			alert("Delete Success");
			$scope.reset();
		}).catch(error => {
			if (error.status == 404) {
				alert("Not Exist Account " + id);
			}
		});
	};
	
	$scope.search = function(kw) {
		if (kw != null) {
			var url = `${urlAccount}/search?kw=${kw}`;
			$http.get(url).then(resp => {
				$scope.accounts = resp.data;
			});
		}
	};
	$scope.reset();
});