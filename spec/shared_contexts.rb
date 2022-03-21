# frozen_string_literal: true

RSpec.shared_context 'digitalocean' do
  let(:digitalocean_get_repository_names_response) do
    %w[admin api-server app server]
  end

  let(:digitalocean_get_repository_tags_response_1) do
    [{ 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-b3c446c5',
       'manifest_digest' =>
        'sha256:2f9e1f9f71af69c4ccc667e3e875ac50e29591e588a5b3887558915671ae7355',
       'compressed_size_bytes' => 56_893_578,
       'size_bytes' => 149_354_135,
       'updated_at' => '2021-08-18T08:25:28Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main',
       'manifest_digest' =>
        'sha256:2f9e1f9f71af69c4ccc667e3e875ac50e29591e588a5b3887558915671ae7355',
       'compressed_size_bytes' => 56_893_578,
       'size_bytes' => 149_354_135,
       'updated_at' => '2021-08-18T08:25:28Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-f1336283',
       'manifest_digest' =>
        'sha256:b5977e44b8cec7b0edd87aaf703c837aa2a7526c5d3c52709100d5da0754d517',
       'compressed_size_bytes' => 56_895_493,
       'size_bytes' => 149_354_135,
       'updated_at' => '2021-08-17T17:13:13Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-56684bac',
       'manifest_digest' =>
        'sha256:65a87a33696593fd3af9623005a3b7ec11d96631a96b95a15a7227167c780265',
       'compressed_size_bytes' => 56_897_728,
       'size_bytes' => 149_354_135,
       'updated_at' => '2021-08-17T17:11:51Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-e89a3f74',
       'manifest_digest' =>
        'sha256:d3063b70a270245c0ca313653b7920e8025bdeaf911c404c8ed1dc4cf08063fe',
       'compressed_size_bytes' => 56_903_726,
       'size_bytes' => 149_354_135,
       'updated_at' => '2021-08-17T13:35:29Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-7c570690',
       'manifest_digest' =>
        'sha256:9161fb299eb0ec024157ca393779af84c99f5fc9815272339858bab75c0cbd09',
       'compressed_size_bytes' => 56_897_510,
       'size_bytes' => 149_352_087,
       'updated_at' => '2021-08-11T16:03:22Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-8b0462c8',
       'manifest_digest' =>
        'sha256:61cbbad3930cae3f07adeffa0fbbd02b5d9bd1121c0623a263d172806e6be130',
       'compressed_size_bytes' => 56_907_417,
       'size_bytes' => 149_352_087,
       'updated_at' => '2021-08-06T13:28:08Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'production-ea1aa95b',
       'manifest_digest' =>
        'sha256:6a2f93b8c77e85cd4596ae825171bf9a9fb0596114c584d459653ffb58b46afc',
       'compressed_size_bytes' => 56_803_429,
       'size_bytes' => 148_978_327,
       'updated_at' => '2021-07-28T13:47:28Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'production',
       'manifest_digest' =>
        'sha256:6a2f93b8c77e85cd4596ae825171bf9a9fb0596114c584d459653ffb58b46afc',
       'compressed_size_bytes' => 56_803_429,
       'size_bytes' => 148_978_327,
       'updated_at' => '2021-07-28T13:47:28Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-140ec357',
       'manifest_digest' =>
        'sha256:51b95321ab1f518afa771292efcb67c0c2a98cb5bda7fc1eb900853210af20d2',
       'compressed_size_bytes' => 56_798_302,
       'size_bytes' => 148_978_327,
       'updated_at' => '2021-07-28T12:42:34Z' }]
    [{ 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-b3c446c5',
       'manifest_digest' =>
        'sha256:2f9e1f9f71af69c4ccc667e3e875ac50e29591e588a5b3887558915671ae7355',
       'compressed_size_bytes' => 56_893_578,
       'size_bytes' => 149_354_135,
       'updated_at' => '2021-08-18T08:25:28Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main',
       'manifest_digest' =>
        'sha256:2f9e1f9f71af69c4ccc667e3e875ac50e29591e588a5b3887558915671ae7355',
       'compressed_size_bytes' => 56_893_578,
       'size_bytes' => 149_354_135,
       'updated_at' => '2021-08-18T08:25:28Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-f1336283',
       'manifest_digest' =>
        'sha256:b5977e44b8cec7b0edd87aaf703c837aa2a7526c5d3c52709100d5da0754d517',
       'compressed_size_bytes' => 56_895_493,
       'size_bytes' => 149_354_135,
       'updated_at' => '2021-08-17T17:13:13Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-56684bac',
       'manifest_digest' =>
        'sha256:65a87a33696593fd3af9623005a3b7ec11d96631a96b95a15a7227167c780265',
       'compressed_size_bytes' => 56_897_728,
       'size_bytes' => 149_354_135,
       'updated_at' => '2021-08-17T17:11:51Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-e89a3f74',
       'manifest_digest' =>
        'sha256:d3063b70a270245c0ca313653b7920e8025bdeaf911c404c8ed1dc4cf08063fe',
       'compressed_size_bytes' => 56_903_726,
       'size_bytes' => 149_354_135,
       'updated_at' => '2021-08-17T13:35:29Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-7c570690',
       'manifest_digest' =>
        'sha256:9161fb299eb0ec024157ca393779af84c99f5fc9815272339858bab75c0cbd09',
       'compressed_size_bytes' => 56_897_510,
       'size_bytes' => 149_352_087,
       'updated_at' => '2021-08-11T16:03:22Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-8b0462c8',
       'manifest_digest' =>
        'sha256:61cbbad3930cae3f07adeffa0fbbd02b5d9bd1121c0623a263d172806e6be130',
       'compressed_size_bytes' => 56_907_417,
       'size_bytes' => 149_352_087,
       'updated_at' => '2021-08-06T13:28:08Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'production-ea1aa95b',
       'manifest_digest' =>
        'sha256:6a2f93b8c77e85cd4596ae825171bf9a9fb0596114c584d459653ffb58b46afc',
       'compressed_size_bytes' => 56_803_429,
       'size_bytes' => 148_978_327,
       'updated_at' => '2021-07-28T13:47:28Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'production',
       'manifest_digest' =>
        'sha256:6a2f93b8c77e85cd4596ae825171bf9a9fb0596114c584d459653ffb58b46afc',
       'compressed_size_bytes' => 56_803_429,
       'size_bytes' => 148_978_327,
       'updated_at' => '2021-07-28T13:47:28Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'admin',
       'tag' => 'main-140ec357',
       'manifest_digest' =>
        'sha256:51b95321ab1f518afa771292efcb67c0c2a98cb5bda7fc1eb900853210af20d2',
       'compressed_size_bytes' => 56_798_302,
       'size_bytes' => 148_978_327,
       'updated_at' => '2021-07-28T12:42:34Z' }]
  end

  let(:digitalocean_get_repository_tags_response_2) do
    [{ 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'main-7e4fc748',
       'manifest_digest' =>
        'sha256:b04226f0f1913de35662389f5f6a2df8a573aa15a47d9934e6f552483e05f4b1',
       'compressed_size_bytes' => 407_485_655,
       'size_bytes' => 1_150_635_707,
       'updated_at' => '2021-07-09T20:21:34Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'main',
       'manifest_digest' =>
        'sha256:b04226f0f1913de35662389f5f6a2df8a573aa15a47d9934e6f552483e05f4b1',
       'compressed_size_bytes' => 407_485_655,
       'size_bytes' => 1_150_635_707,
       'updated_at' => '2021-07-09T20:21:34Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'production-a4768420',
       'manifest_digest' =>
        'sha256:7ff73d801cc125cefb980fb9a7c9f4000d7275e992f4c5403137910bdaca3264',
       'compressed_size_bytes' => 407_239_808,
       'size_bytes' => 1_149_768_891,
       'updated_at' => '2021-07-09T20:21:29Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'production',
       'manifest_digest' =>
        'sha256:96c95149b5af08b8b49396c3a87d92557790324fcc5cbc5d61c8dffef3a89765',
       'compressed_size_bytes' => 407_486_294,
       'size_bytes' => 1_150_635_195,
       'updated_at' => '2021-07-09T20:21:25Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'production-f47f46e1',
       'manifest_digest' =>
        'sha256:96c95149b5af08b8b49396c3a87d92557790324fcc5cbc5d61c8dffef3a89765',
       'compressed_size_bytes' => 407_486_294,
       'size_bytes' => 1_150_635_195,
       'updated_at' => '2021-07-09T20:21:25Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'main-8d98191e',
       'manifest_digest' =>
        'sha256:5e9b7443433f58558df54ed78053a2b9443ef6cae4761cf3807e470ab41736bf',
       'compressed_size_bytes' => 407_240_202,
       'size_bytes' => 1_149_768_891,
       'updated_at' => '2021-07-09T20:21:23Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'main-1982e0d5',
       'manifest_digest' =>
        'sha256:77f61ca6e9e35e3069061e79925a81e10073b78062025532d11bf25407db1d5b',
       'compressed_size_bytes' => 407_485_664,
       'size_bytes' => 1_150_637_243,
       'updated_at' => '2021-07-09T20:21:21Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'main-431b0e8e',
       'manifest_digest' =>
        'sha256:7d7539642fbdcf77e7d37ccdfbd964e51e0e5da2065e5a213b94195a06612bc2',
       'compressed_size_bytes' => 407_482_604,
       'size_bytes' => 1_150_637_243,
       'updated_at' => '2021-07-09T20:21:17Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'production-14d45af4',
       'manifest_digest' =>
        'sha256:379f1b897e968740e12f2285729c174497ec3c714d26d7478a83a8194f68e579',
       'compressed_size_bytes' => 407_487_050,
       'size_bytes' => 1_150_637_243,
       'updated_at' => '2021-07-09T20:21:14Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'production-e15457fe',
       'manifest_digest' =>
        'sha256:03950f995624880ae285c5d73dd9a5b8101d821e8b7d3dd299fa5a43fb9c78fc',
       'compressed_size_bytes' => 407_485_992,
       'size_bytes' => 1_150_637_243,
       'updated_at' => '2021-07-09T20:21:08Z' }]
    [{ 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'main-7e4fc748',
       'manifest_digest' =>
        'sha256:b04226f0f1913de35662389f5f6a2df8a573aa15a47d9934e6f552483e05f4b1',
       'compressed_size_bytes' => 407_485_655,
       'size_bytes' => 1_150_635_707,
       'updated_at' => '2021-07-09T20:21:34Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'main',
       'manifest_digest' =>
        'sha256:b04226f0f1913de35662389f5f6a2df8a573aa15a47d9934e6f552483e05f4b1',
       'compressed_size_bytes' => 407_485_655,
       'size_bytes' => 1_150_635_707,
       'updated_at' => '2021-07-09T20:21:34Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'production-a4768420',
       'manifest_digest' =>
        'sha256:7ff73d801cc125cefb980fb9a7c9f4000d7275e992f4c5403137910bdaca3264',
       'compressed_size_bytes' => 407_239_808,
       'size_bytes' => 1_149_768_891,
       'updated_at' => '2021-07-09T20:21:29Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'production',
       'manifest_digest' =>
        'sha256:96c95149b5af08b8b49396c3a87d92557790324fcc5cbc5d61c8dffef3a89765',
       'compressed_size_bytes' => 407_486_294,
       'size_bytes' => 1_150_635_195,
       'updated_at' => '2021-07-09T20:21:25Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'production-f47f46e1',
       'manifest_digest' =>
        'sha256:96c95149b5af08b8b49396c3a87d92557790324fcc5cbc5d61c8dffef3a89765',
       'compressed_size_bytes' => 407_486_294,
       'size_bytes' => 1_150_635_195,
       'updated_at' => '2021-07-09T20:21:25Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'main-8d98191e',
       'manifest_digest' =>
        'sha256:5e9b7443433f58558df54ed78053a2b9443ef6cae4761cf3807e470ab41736bf',
       'compressed_size_bytes' => 407_240_202,
       'size_bytes' => 1_149_768_891,
       'updated_at' => '2021-07-09T20:21:23Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'main-1982e0d5',
       'manifest_digest' =>
        'sha256:77f61ca6e9e35e3069061e79925a81e10073b78062025532d11bf25407db1d5b',
       'compressed_size_bytes' => 407_485_664,
       'size_bytes' => 1_150_637_243,
       'updated_at' => '2021-07-09T20:21:21Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'main-431b0e8e',
       'manifest_digest' =>
        'sha256:7d7539642fbdcf77e7d37ccdfbd964e51e0e5da2065e5a213b94195a06612bc2',
       'compressed_size_bytes' => 407_482_604,
       'size_bytes' => 1_150_637_243,
       'updated_at' => '2021-07-09T20:21:17Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'production-14d45af4',
       'manifest_digest' =>
        'sha256:379f1b897e968740e12f2285729c174497ec3c714d26d7478a83a8194f68e579',
       'compressed_size_bytes' => 407_487_050,
       'size_bytes' => 1_150_637_243,
       'updated_at' => '2021-07-09T20:21:14Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'api-server',
       'tag' => 'production-e15457fe',
       'manifest_digest' =>
        'sha256:03950f995624880ae285c5d73dd9a5b8101d821e8b7d3dd299fa5a43fb9c78fc',
       'compressed_size_bytes' => 407_485_992,
       'size_bytes' => 1_150_637_243,
       'updated_at' => '2021-07-09T20:21:08Z' }]
  end

  let(:digitalocean_get_repository_tags_response_3) do
    [{ 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-8c67b258',
       'manifest_digest' =>
        'sha256:bdab0eac8552d12fe8f132ff21e05b5d513dbb8e10a62e005d318623f87de05c',
       'compressed_size_bytes' => 603_925_029,
       'size_bytes' => 1_819_377_556,
       'updated_at' => '2021-08-19T07:24:09Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main',
       'manifest_digest' =>
        'sha256:bdab0eac8552d12fe8f132ff21e05b5d513dbb8e10a62e005d318623f87de05c',
       'compressed_size_bytes' => 603_925_029,
       'size_bytes' => 1_819_377_556,
       'updated_at' => '2021-08-19T07:24:09Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-ff2d53f3',
       'manifest_digest' =>
        'sha256:849692ec9a80d515b03f48b3847dae93af7eb6de1f6c110726e5638ef5ffcc8d',
       'compressed_size_bytes' => 603_869_687,
       'size_bytes' => 1_819_260_820,
       'updated_at' => '2021-08-18T15:47:45Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-c9708cd2',
       'manifest_digest' =>
        'sha256:79cef452824a62ed9e72acc9a2711e5adbd41de65fa4c3e20a46aa71f53e91cc',
       'compressed_size_bytes' => 603_873_926,
       'size_bytes' => 1_819_260_820,
       'updated_at' => '2021-08-17T15:02:01Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-f8c2757c',
       'manifest_digest' =>
        'sha256:5b376dde4d72b54b7fd1aa1b446d1ac76b1b593f187d951fb846b449e56853c9',
       'compressed_size_bytes' => 603_851_203,
       'size_bytes' => 1_819_256_724,
       'updated_at' => '2021-08-13T09:54:52Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-1bf7ec7f',
       'manifest_digest' =>
        'sha256:68e6a01a215ea2c60999d94761620cff52df2113e19cfe81b593b5833c6ab146',
       'compressed_size_bytes' => 603_826_696,
       'size_bytes' => 1_819_076_500,
       'updated_at' => '2021-08-04T14:24:30Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-b08b1cee',
       'manifest_digest' =>
        'sha256:bf318c66408f5bae840c2b3447ff1ad6b25420bcde60b3209c4a109d6e0e10b5',
       'compressed_size_bytes' => 603_829_244,
       'size_bytes' => 1_819_077_012,
       'updated_at' => '2021-08-04T11:34:09Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-99bd98c8',
       'manifest_digest' =>
        'sha256:b1601d6f476ba73553b2b928a7ffa749c99b9a9c1765c6fad2db60c4657f706c',
       'compressed_size_bytes' => 604_022_968,
       'size_bytes' => 1_818_928_020,
       'updated_at' => '2021-07-29T12:31:29Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'production-fffeb2e3',
       'manifest_digest' =>
        'sha256:0a5d672abe776cdbccc0e06f1ed89f664e0258af7bc6b94dd702e5f3c2492c6a',
       'compressed_size_bytes' => 602_061_867,
       'size_bytes' => 1_812_297_108,
       'updated_at' => '2021-07-28T13:06:26Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'production',
       'manifest_digest' =>
        'sha256:0a5d672abe776cdbccc0e06f1ed89f664e0258af7bc6b94dd702e5f3c2492c6a',
       'compressed_size_bytes' => 602_061_867,
       'size_bytes' => 1_812_297_108,
       'updated_at' => '2021-07-28T13:06:26Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-88a4d3fa',
       'manifest_digest' =>
        'sha256:7fcb6f3549f575cb8b8108ad79fd97ea93face3cad0bb5cfe06b5e7f540eb52c',
       'compressed_size_bytes' => 604_007_546,
       'size_bytes' => 1_818_927_508,
       'updated_at' => '2021-07-28T12:54:18Z' }]
    [{ 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-8c67b258',
       'manifest_digest' =>
        'sha256:bdab0eac8552d12fe8f132ff21e05b5d513dbb8e10a62e005d318623f87de05c',
       'compressed_size_bytes' => 603_925_029,
       'size_bytes' => 1_819_377_556,
       'updated_at' => '2021-08-19T07:24:09Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main',
       'manifest_digest' =>
        'sha256:bdab0eac8552d12fe8f132ff21e05b5d513dbb8e10a62e005d318623f87de05c',
       'compressed_size_bytes' => 603_925_029,
       'size_bytes' => 1_819_377_556,
       'updated_at' => '2021-08-19T07:24:09Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-ff2d53f3',
       'manifest_digest' =>
        'sha256:849692ec9a80d515b03f48b3847dae93af7eb6de1f6c110726e5638ef5ffcc8d',
       'compressed_size_bytes' => 603_869_687,
       'size_bytes' => 1_819_260_820,
       'updated_at' => '2021-08-18T15:47:45Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-c9708cd2',
       'manifest_digest' =>
        'sha256:79cef452824a62ed9e72acc9a2711e5adbd41de65fa4c3e20a46aa71f53e91cc',
       'compressed_size_bytes' => 603_873_926,
       'size_bytes' => 1_819_260_820,
       'updated_at' => '2021-08-17T15:02:01Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-f8c2757c',
       'manifest_digest' =>
        'sha256:5b376dde4d72b54b7fd1aa1b446d1ac76b1b593f187d951fb846b449e56853c9',
       'compressed_size_bytes' => 603_851_203,
       'size_bytes' => 1_819_256_724,
       'updated_at' => '2021-08-13T09:54:52Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-1bf7ec7f',
       'manifest_digest' =>
        'sha256:68e6a01a215ea2c60999d94761620cff52df2113e19cfe81b593b5833c6ab146',
       'compressed_size_bytes' => 603_826_696,
       'size_bytes' => 1_819_076_500,
       'updated_at' => '2021-08-04T14:24:30Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-b08b1cee',
       'manifest_digest' =>
        'sha256:bf318c66408f5bae840c2b3447ff1ad6b25420bcde60b3209c4a109d6e0e10b5',
       'compressed_size_bytes' => 603_829_244,
       'size_bytes' => 1_819_077_012,
       'updated_at' => '2021-08-04T11:34:09Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-99bd98c8',
       'manifest_digest' =>
        'sha256:b1601d6f476ba73553b2b928a7ffa749c99b9a9c1765c6fad2db60c4657f706c',
       'compressed_size_bytes' => 604_022_968,
       'size_bytes' => 1_818_928_020,
       'updated_at' => '2021-07-29T12:31:29Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'production-fffeb2e3',
       'manifest_digest' =>
        'sha256:0a5d672abe776cdbccc0e06f1ed89f664e0258af7bc6b94dd702e5f3c2492c6a',
       'compressed_size_bytes' => 602_061_867,
       'size_bytes' => 1_812_297_108,
       'updated_at' => '2021-07-28T13:06:26Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'production',
       'manifest_digest' =>
        'sha256:0a5d672abe776cdbccc0e06f1ed89f664e0258af7bc6b94dd702e5f3c2492c6a',
       'compressed_size_bytes' => 602_061_867,
       'size_bytes' => 1_812_297_108,
       'updated_at' => '2021-07-28T13:06:26Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'app',
       'tag' => 'main-88a4d3fa',
       'manifest_digest' =>
        'sha256:7fcb6f3549f575cb8b8108ad79fd97ea93face3cad0bb5cfe06b5e7f540eb52c',
       'compressed_size_bytes' => 604_007_546,
       'size_bytes' => 1_818_927_508,
       'updated_at' => '2021-07-28T12:54:18Z' }]
  end

  let(:digitalocean_get_repository_tags_response_4) do
    [{ 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-496f83f7',
       'manifest_digest' =>
        'sha256:d9e4dbfcb798c0d0ec5cb92363b47d5a8f8b91dc92351ca84ba1c956f85f07d2',
       'compressed_size_bytes' => 470_642_326,
       'size_bytes' => 1_239_374_823,
       'updated_at' => '2021-08-17T14:57:19Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main',
       'manifest_digest' =>
        'sha256:d9e4dbfcb798c0d0ec5cb92363b47d5a8f8b91dc92351ca84ba1c956f85f07d2',
       'compressed_size_bytes' => 470_642_326,
       'size_bytes' => 1_239_374_823,
       'updated_at' => '2021-08-17T14:57:19Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-eca75e7e',
       'manifest_digest' =>
        'sha256:ebf34e955da016edee0dc839c9e59cf55f4e5f5d92363613ba3f491b29110b20',
       'compressed_size_bytes' => 470_638_969,
       'size_bytes' => 1_239_373_287,
       'updated_at' => '2021-08-17T13:32:58Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-ae87aa2e',
       'manifest_digest' =>
        'sha256:6bdd943d0205ff1bc6dd419a6c02a29aae7902bdf302b9c5b182adcd0af2c5eb',
       'compressed_size_bytes' => 470_641_745,
       'size_bytes' => 1_239_360_999,
       'updated_at' => '2021-08-17T12:48:41Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-d44fd694',
       'manifest_digest' =>
        'sha256:7271aebbe683279078fd76e59d1cb0992cb9db950e36a2c0504410c64a32b4fd',
       'compressed_size_bytes' => 470_625_855,
       'size_bytes' => 1_239_338_983,
       'updated_at' => '2021-08-16T08:06:43Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'production-4cd5150f',
       'manifest_digest' =>
        'sha256:6cadfdaf6d4b87f900b48289a8816f2d5647fe4dad290f6684ac7efbf5635436',
       'compressed_size_bytes' => 469_663_679,
       'size_bytes' => 1_237_329_895,
       'updated_at' => '2021-08-15T08:14:22Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'production',
       'manifest_digest' =>
        'sha256:6cadfdaf6d4b87f900b48289a8816f2d5647fe4dad290f6684ac7efbf5635436',
       'compressed_size_bytes' => 469_663_679,
       'size_bytes' => 1_237_329_895,
       'updated_at' => '2021-08-15T08:14:22Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-7bcbcc78',
       'manifest_digest' =>
        'sha256:824d6315ad494a312b396fb696cfeef85eeac87a14e8bb49fa4ddf514d58345f',
       'compressed_size_bytes' => 470_611_258,
       'size_bytes' => 1_239_315_943,
       'updated_at' => '2021-08-13T13:08:04Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-55dc9d21',
       'manifest_digest' =>
        'sha256:dc4c8cc6e4b53801c53d1c3e007829fbb06dc228e37dec4c8acab65d78b6ce52',
       'compressed_size_bytes' => 470_794_606,
       'size_bytes' => 1_239_667_175,
       'updated_at' => '2021-08-12T09:52:24Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-a2d40d26',
       'manifest_digest' =>
        'sha256:157318f8c79db7a374c461fdba1716a45543fb5a4bf7a65b2c2c9cf096c15cf7',
       'compressed_size_bytes' => 470_791_660,
       'size_bytes' => 1_239_647_719,
       'updated_at' => '2021-08-11T17:56:34Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-e9221264',
       'manifest_digest' =>
        'sha256:643890dce0718d291d75aef2b52607b6f4b41e842722c7b7f55833eca9030312',
       'compressed_size_bytes' => 470_791_646,
       'size_bytes' => 1_239_646_695,
       'updated_at' => '2021-08-11T16:24:15Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-e44e3f80',
       'manifest_digest' =>
        'sha256:fe7235ed746c77a9b18f8f461c803543c37b32f307efec9462ad800e6953ab17',
       'compressed_size_bytes' => 470_789_198,
       'size_bytes' => 1_239_645_671,
       'updated_at' => '2021-08-11T16:20:05Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-8477de30',
       'manifest_digest' =>
        'sha256:4f7df33328aa9216bbbe90c974cd4d34b1d762237fcab07a83fe6960016c31f7',
       'compressed_size_bytes' => 470_790_181,
       'size_bytes' => 1_239_645_671,
       'updated_at' => '2021-08-11T14:04:21Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-06c2042f',
       'manifest_digest' =>
        'sha256:7fc09e7912aefb984a7177d914e3c677ecfe3e235462fb18ba0d0037a41d1474',
       'compressed_size_bytes' => 470_789_914,
       'size_bytes' => 1_239_644_135,
       'updated_at' => '2021-08-11T12:10:12Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-d0dac1bf',
       'manifest_digest' =>
        'sha256:8a3aa54e019e5fb6fa8dfb706cbbde85a32b19c4044ccea91dae657c3c7a6339',
       'compressed_size_bytes' => 470_788_740,
       'size_bytes' => 1_239_639_527,
       'updated_at' => '2021-08-11T08:42:43Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-f8ec05b5',
       'manifest_digest' =>
        'sha256:b5ed64233c60a5832f3d8cd0eddfd5d75cec43e968977d73100156dbac31382a',
       'compressed_size_bytes' => 470_778_811,
       'size_bytes' => 1_239_612_903,
       'updated_at' => '2021-08-09T10:08:40Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-2917c5ea',
       'manifest_digest' =>
        'sha256:e6de0ccadc97c8ec5b5dcf78ca987358064b6d81746062f0df98c0e8e56d66a2',
       'compressed_size_bytes' => 470_775_708,
       'size_bytes' => 1_239_611_879,
       'updated_at' => '2021-08-09T09:01:16Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-f0230663',
       'manifest_digest' =>
        'sha256:c2ee0a87dd92ce8810384af41ca3b2fd7c5263d3734b87dafb686991907fb53e',
       'compressed_size_bytes' => 470_745_984,
       'size_bytes' => 1_239_568_871,
       'updated_at' => '2021-08-06T08:29:20Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-a004ea7c',
       'manifest_digest' =>
        'sha256:31634ca7d537f6111150269740a3d4fd1c3130e89d58cae49ba0ffe226433f80',
       'compressed_size_bytes' => 470_753_433,
       'size_bytes' => 1_239_561_703,
       'updated_at' => '2021-08-05T16:01:24Z' }]
    [{ 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-496f83f7',
       'manifest_digest' =>
        'sha256:d9e4dbfcb798c0d0ec5cb92363b47d5a8f8b91dc92351ca84ba1c956f85f07d2',
       'compressed_size_bytes' => 470_642_326,
       'size_bytes' => 1_239_374_823,
       'updated_at' => '2021-08-17T14:57:19Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main',
       'manifest_digest' =>
        'sha256:d9e4dbfcb798c0d0ec5cb92363b47d5a8f8b91dc92351ca84ba1c956f85f07d2',
       'compressed_size_bytes' => 470_642_326,
       'size_bytes' => 1_239_374_823,
       'updated_at' => '2021-08-17T14:57:19Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-eca75e7e',
       'manifest_digest' =>
        'sha256:ebf34e955da016edee0dc839c9e59cf55f4e5f5d92363613ba3f491b29110b20',
       'compressed_size_bytes' => 470_638_969,
       'size_bytes' => 1_239_373_287,
       'updated_at' => '2021-08-17T13:32:58Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-ae87aa2e',
       'manifest_digest' =>
        'sha256:6bdd943d0205ff1bc6dd419a6c02a29aae7902bdf302b9c5b182adcd0af2c5eb',
       'compressed_size_bytes' => 470_641_745,
       'size_bytes' => 1_239_360_999,
       'updated_at' => '2021-08-17T12:48:41Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-d44fd694',
       'manifest_digest' =>
        'sha256:7271aebbe683279078fd76e59d1cb0992cb9db950e36a2c0504410c64a32b4fd',
       'compressed_size_bytes' => 470_625_855,
       'size_bytes' => 1_239_338_983,
       'updated_at' => '2021-08-16T08:06:43Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'production-4cd5150f',
       'manifest_digest' =>
        'sha256:6cadfdaf6d4b87f900b48289a8816f2d5647fe4dad290f6684ac7efbf5635436',
       'compressed_size_bytes' => 469_663_679,
       'size_bytes' => 1_237_329_895,
       'updated_at' => '2021-08-15T08:14:22Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'production',
       'manifest_digest' =>
        'sha256:6cadfdaf6d4b87f900b48289a8816f2d5647fe4dad290f6684ac7efbf5635436',
       'compressed_size_bytes' => 469_663_679,
       'size_bytes' => 1_237_329_895,
       'updated_at' => '2021-08-15T08:14:22Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-7bcbcc78',
       'manifest_digest' =>
        'sha256:824d6315ad494a312b396fb696cfeef85eeac87a14e8bb49fa4ddf514d58345f',
       'compressed_size_bytes' => 470_611_258,
       'size_bytes' => 1_239_315_943,
       'updated_at' => '2021-08-13T13:08:04Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-55dc9d21',
       'manifest_digest' =>
        'sha256:dc4c8cc6e4b53801c53d1c3e007829fbb06dc228e37dec4c8acab65d78b6ce52',
       'compressed_size_bytes' => 470_794_606,
       'size_bytes' => 1_239_667_175,
       'updated_at' => '2021-08-12T09:52:24Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-a2d40d26',
       'manifest_digest' =>
        'sha256:157318f8c79db7a374c461fdba1716a45543fb5a4bf7a65b2c2c9cf096c15cf7',
       'compressed_size_bytes' => 470_791_660,
       'size_bytes' => 1_239_647_719,
       'updated_at' => '2021-08-11T17:56:34Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-e9221264',
       'manifest_digest' =>
        'sha256:643890dce0718d291d75aef2b52607b6f4b41e842722c7b7f55833eca9030312',
       'compressed_size_bytes' => 470_791_646,
       'size_bytes' => 1_239_646_695,
       'updated_at' => '2021-08-11T16:24:15Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-e44e3f80',
       'manifest_digest' =>
        'sha256:fe7235ed746c77a9b18f8f461c803543c37b32f307efec9462ad800e6953ab17',
       'compressed_size_bytes' => 470_789_198,
       'size_bytes' => 1_239_645_671,
       'updated_at' => '2021-08-11T16:20:05Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-8477de30',
       'manifest_digest' =>
        'sha256:4f7df33328aa9216bbbe90c974cd4d34b1d762237fcab07a83fe6960016c31f7',
       'compressed_size_bytes' => 470_790_181,
       'size_bytes' => 1_239_645_671,
       'updated_at' => '2021-08-11T14:04:21Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-06c2042f',
       'manifest_digest' =>
        'sha256:7fc09e7912aefb984a7177d914e3c677ecfe3e235462fb18ba0d0037a41d1474',
       'compressed_size_bytes' => 470_789_914,
       'size_bytes' => 1_239_644_135,
       'updated_at' => '2021-08-11T12:10:12Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-d0dac1bf',
       'manifest_digest' =>
        'sha256:8a3aa54e019e5fb6fa8dfb706cbbde85a32b19c4044ccea91dae657c3c7a6339',
       'compressed_size_bytes' => 470_788_740,
       'size_bytes' => 1_239_639_527,
       'updated_at' => '2021-08-11T08:42:43Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-f8ec05b5',
       'manifest_digest' =>
        'sha256:b5ed64233c60a5832f3d8cd0eddfd5d75cec43e968977d73100156dbac31382a',
       'compressed_size_bytes' => 470_778_811,
       'size_bytes' => 1_239_612_903,
       'updated_at' => '2021-08-09T10:08:40Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-2917c5ea',
       'manifest_digest' =>
        'sha256:e6de0ccadc97c8ec5b5dcf78ca987358064b6d81746062f0df98c0e8e56d66a2',
       'compressed_size_bytes' => 470_775_708,
       'size_bytes' => 1_239_611_879,
       'updated_at' => '2021-08-09T09:01:16Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-f0230663',
       'manifest_digest' =>
        'sha256:c2ee0a87dd92ce8810384af41ca3b2fd7c5263d3734b87dafb686991907fb53e',
       'compressed_size_bytes' => 470_745_984,
       'size_bytes' => 1_239_568_871,
       'updated_at' => '2021-08-06T08:29:20Z' },
     { 'registry_name' => 'warmango',
       'repository' => 'server',
       'tag' => 'main-a004ea7c',
       'manifest_digest' =>
        'sha256:31634ca7d537f6111150269740a3d4fd1c3130e89d58cae49ba0ffe226433f80',
       'compressed_size_bytes' => 470_753_433,
       'size_bytes' => 1_239_561_703,
       'updated_at' => '2021-08-05T16:01:24Z' }]
  end
end