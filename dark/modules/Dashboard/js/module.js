registerController("DashboardOverviewController", ['$api', '$scope', function($api, $scope) {
	$scope.cpu = "";
	$scope.uptime = "";
	$scope.clients = "";
	$scope.ssids = "";
	$scope.newssids = "";

	$api.request({
		module: "Dashboard",
		action: "getOverviewData"
	}, function(response) {
		$scope.cpu = response.cpu;
		$scope.uptime = response.uptime;
		$scope.clients = response.clients;
		$scope.ssids = response.SSIDs;
		$scope.newssids = response.newSSIDs;
	});
}]);

registerController("DashboardLandingPageController", ['$api', '$scope', function($api, $scope){
	$scope.browsers = [];

	$api.request({
		module: "Dashboard",
		action: "getLandingPageData"
	}, function(response){
		if (response.error === undefined) {
			$scope.browsers = response;
		}
	});
}]);

registerController("DashboardBulletinsController", ['$api', '$scope', function($api, $scope){
	$scope.bulletins = [];

	$scope.getBulletins = function() {

		$scope.loading = true;

		$api.request({
			module: "Dashboard",
			action: "getBulletins"
		}, function(response){
			$scope.loading = false;
			if (response.error !== undefined) {
				$scope.error = response.error;
			} else {
				$scope.bulletins = response;
				$scope.error = false;
			}
		});
	}

}]);