SET foreign_key_checks=1;

INSERT INTO mst_category(category_name, category_description) VALUES('淡水魚', '淡水に住む魚です');
INSERT INTO mst_category(category_name, category_description) VALUES('海水魚', '海水に住む魚です');
INSERT INTO mst_category(category_name, category_description) VALUES('その他', '魚以外の生き物です');

INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path,
    release_date,
    release_company
    ) VALUES(
        '金魚',
        'きんぎょ',
        '赤色が鮮やかで美しい金魚です。飼いやすくアクアリウム初心者におすすめ。',
        1,
        200,
        '/img/goldfish.jpg',
        '2020/08/17',
        'テスト株式会社'
    );

INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'グッピー',
        'ぐっぴー',
        '丈夫で初心者にも飼いやすい品種です。番でお届けいたします。',
        1,
        1800,
        '/img/guppy.jpg'
    );
    
INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'ベタ',
        'べた',
        'オス同士のケンカはすさまじく「闘魚」と呼ばれています。お互いがヒレがボロボロになるだけでなく、弱い個体は殺されてしまうこともあります。そのためかならず単体で飼育してください。その闘争性の強さを利用し、水槽同士を隣同士にしたり、鏡を見せることでフレアリングし、ヒレを広げるトレーニングになります。',
        1,
        800,
        '/img/beta.jpg'
    );
    
INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'アロワナ',
        'あろわな',
        '南アメリカ、オーストラリアの淡水域に生息している古代魚の一種。食性は主に小魚や虫などを食べる肉食である。',
        1,
        100000,
        '/img/arowana.jpg'
    );

INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'カクレクマノミ',
        'かくれくまのみ',
        '映画で人気のお魚。群れの中で一番大きなオスがメスへと性転換するため、同じ水槽の中でも大きさの違うクマノミを入れておくとペアになる確率が高いです。',
        2,
        850,
        '/img/yellowtail-clownfish.jpg'
    );

INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'ミノカサゴ',
        'みのかさご',
        '棘に毒があるため絶対に触らないようにして下さい。肉食性のためエビや小さな魚との混泳は避けましょう。',
        2,
        2800,
        '/img/luna-lionfish.jpg'
    );

INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'ナンヨウハギ',
        'なんようはぎ',
        '映画でおなじみのお魚。最大で30cmまで成長します。遊泳力があるので広い水槽で飼育してあげてください。',
        2,
        5800,
        '/img/hagi.jpg'
    );

INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'ジンベエザメ',
        'じんべえざめ',
        '地中海を除くすべての熱帯及び温帯域の海に生息しており、日本国内でも沖縄や九州、四国周辺で定置網にかかることがあります。
食性は主にプランクトンではありますが、甲殻類やイワシ、サバ、マグロ、イカ等も食べます。',
        2,
        10000000,
        '/img/jinbei.jpg'
    );
    
INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'ミドリガメ（ミシシッピアカミミガメ）',
        'みどりがめ（みししっぴあかみみがめ）',
        '寿命は平均13〜15年程度、上手に飼うと30年程度、大きさは30cm程度にまで成長します。',
        3,
        1500,
        '/img/red-eared-slider.jpg'
    );

INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'ウーパールーパー',
        'うーぱーるーぱー',
        '正式名称は「メキシコサラマンダー」といい、雑食性で何でもよく食べます。愛くるしい表情が魅力です。',
        3,
        2000,
        '/img/mexico-salamander.jpg'
    );

INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'ヤドクガエル',
        'やどくがえる',
        '本来毒のあるカエルですが、生息地の餌昆虫から作り出すため、生まれたときから管理されている個体には毒はありません。ですが、カエルにとってストレスになるため不本意に触ってはいけません。',
        3,
        12000,
        '/img/mimic-poison-frog.jpg'
    );

INSERT INTO mst_product(
    product_name,
    product_name_kana,
    product_description,
    category_id,
    price,
    image_full_path
    ) VALUES(
        'キングペンギン',
        'きんぐぺんぎん',
        '寿命は大体15～20年、4歳ごろから初めての繁殖を始めます。温暖な地域で暮らしているキングペンギンは飼育がしやすいので日本中の動物園や水族館でも多く育てられていますし、ペットとしても比較的飼育しやすいでしょう。尚、プールや池は必須ですので必ずご用意ください。',
        3,
        700000,
        '/img/king-penguin.jpg'
    );