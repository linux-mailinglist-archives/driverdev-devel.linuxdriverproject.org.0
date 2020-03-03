Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E279176D76
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 04:09:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2AC78759E;
	Tue,  3 Mar 2020 03:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kvFvMQtnSwVe; Tue,  3 Mar 2020 03:09:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D1BBE873E3;
	Tue,  3 Mar 2020 03:09:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF36B1BF312
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 03:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A9290863D0
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 03:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DNY3zMYJDeif for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 03:08:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx04.melco.co.jp (mx04.melco.co.jp [192.218.140.144])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7B3E48619A
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 03:08:59 +0000 (UTC)
Received: from mr04.melco.co.jp (mr04 [133.141.98.166])
 by mx04.melco.co.jp (Postfix) with ESMTP id 846723A429F;
 Tue,  3 Mar 2020 12:08:57 +0900 (JST)
Received: from mr04.melco.co.jp (unknown [127.0.0.1])
 by mr04.imss (Postfix) with ESMTP id 48Whmn3Pb2zRkB6;
 Tue,  3 Mar 2020 12:08:57 +0900 (JST)
Received: from mf03_second.melco.co.jp (unknown [192.168.20.183])
 by mr04.melco.co.jp (Postfix) with ESMTP id 48Whmn35M4zRkB0;
 Tue,  3 Mar 2020 12:08:57 +0900 (JST)
Received: from mf03.melco.co.jp (unknown [133.141.98.183])
 by mf03_second.melco.co.jp (Postfix) with ESMTP id 48Whmn31wmzRkFV;
 Tue,  3 Mar 2020 12:08:57 +0900 (JST)
Received: from JPN01-TY1-obe.outbound.protection.outlook.com (unknown
 [104.47.93.57])
 by mf03.melco.co.jp (Postfix) with ESMTP id 48Whmn2rwKzRk8g;
 Tue,  3 Mar 2020 12:08:57 +0900 (JST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BkyW5athoTX+RgLyX6ls4Xy0hulBZBBNOsMVHEScNcF0CcK5V09+Tv32EP1JdNq3L1mJ1hlP2e98zStWs4m+BhOPjcW6vozAl+G+T8IPPgDm2unq5G8hyifd/eCxGcHcoNyRh1SpKrWaL4qyFZVkHqv+Apv1lcgvYpDsEo7XSxD17vwElaKxJquFzA4m4rxfaElTO9eIb4j/CMtXT1fJ+3k7kqGTP2/1eBSWcZTPp62bMHYXGTXsiG6qocXyep/QmpHZH3pEwk+3UPV+0MiunJN6WJc6vC5nHKvkvljWcXwk39HyEjWzI/67CfptvnLFgb9ZIyTitBPmYjgLc5xfPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0yfKPKzdPJesgnDQAI0INMfNawCjAxxgZeZmOQlgnPg=;
 b=AVWT9XGflOCTs/VN0k+78/Tj6ecQ1vG1kh6LzgmUTQIIngsePil3+tk0UjE4yz8uQVszugq90WZaSSI5zcmWnVduOrv3nSs/AIkQwUKhbo0EbfUuR8BeBCs9nRNBCSWEyLA/93xeAK4lod66fG2ewEamQqvhN89ne7HSHNzDD/HYJ4ZtjC/b7glJx6NcNhIWMM2GdCChmWXjHsPGRt0+PbQvxN1hZMj1S+5Zj3zbRjGCH/Bt6vXfgdEKyMSQPRxilz6Ryo4VrmMcNlAOvTPmjlikFrPBfq9HINS+BJC56LvIQJuGHD/pugoSIv0jZEjf8wBbGGjPM9rUr6wuEktftQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dc.mitsubishielectric.co.jp; dmarc=pass action=none
 header.from=dc.mitsubishielectric.co.jp; dkim=pass
 header.d=dc.mitsubishielectric.co.jp; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mitsubishielectricgroup.onmicrosoft.com;
 s=selector2-mitsubishielectricgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0yfKPKzdPJesgnDQAI0INMfNawCjAxxgZeZmOQlgnPg=;
 b=g/Y0M5hH34E9ewCBe4tIxSRGY0OwNAig92o/3LD6Q0s1017CGXJURMLRpxF9pKCxMnENhGPQHelSlFHmVQp+spTPZe+vr1S0pvhYMWhERCf36j8pCx8rEWI1ycGK0gZPzGuCq3jPimWWjzahTaY5gXZPqmWv37Ecw9TUfEvuwtk=
Received: from TY1PR01MB1578.jpnprd01.prod.outlook.com (52.133.161.22) by
 TY2SPR01MB0005.jpnprd01.prod.outlook.com (20.177.79.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Tue, 3 Mar 2020 03:08:57 +0000
Received: from TY1PR01MB1578.jpnprd01.prod.outlook.com
 ([fe80::1cea:e753:3a3b:8e1b]) by TY1PR01MB1578.jpnprd01.prod.outlook.com
 ([fe80::1cea:e753:3a3b:8e1b%7]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 03:08:56 +0000
From: "Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp"
 <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
To: =?utf-8?B?J1ZhbGRpcyBLbMSTdG5pZWtzJw==?= <valdis.kletnieks@vt.edu>
Subject: RE: [PATCH 1/2] staging: exfat: clean up d_entry rebuilding.
Thread-Topic: [PATCH 1/2] staging: exfat: clean up d_entry rebuilding.
Thread-Index: AQHV8Hj2ji1miSANjk6rmTkVPsyLB6g1GhQAgAESGHA=
Date: Tue, 3 Mar 2020 03:07:51 +0000
Deferred-Delivery: Tue, 3 Mar 2020 03:08:50 +0000
Message-ID: <TY1PR01MB1578983D124E99FB66FB707190E40@TY1PR01MB1578.jpnprd01.prod.outlook.com>
References: <20200302095716.64155-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <240472.1583144994@turing-police>
In-Reply-To: <240472.1583144994@turing-police>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-melpop: 1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp; 
x-originating-ip: [121.80.0.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7feadd93-8d99-4a43-3eb6-08d7bf203673
x-ms-traffictypediagnostic: TY2SPR01MB0005:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2SPR01MB000544A54401FE5B35B43C6B90E40@TY2SPR01MB0005.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39860400002)(346002)(136003)(366004)(376002)(189003)(199004)(6916009)(316002)(186003)(2906002)(26005)(9686003)(8936002)(6666004)(71200400001)(55016002)(6506007)(5660300002)(33656002)(7696005)(54906003)(81156014)(8676002)(86362001)(81166006)(52536014)(66446008)(66946007)(4326008)(66556008)(64756008)(66476007)(478600001)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TY2SPR01MB0005;
 H:TY1PR01MB1578.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: dc.MitsubishiElectric.co.jp does
 not designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VwpV1P+QpRbZO4byViXe5aXYk2tRy7Y2ezVOh/TrDqo7ZQ1cNb6Uet3dtbAUG/rA6eobxX/F8nUM3vH6/0PJr+jNm+tZrOLZbEGvn4zhmSwOQgshebfcCFoJbyO16/lcySnHCv8hDTmZhpQPU0udBth4l9QJps+rJRV1GhJ+UzmNu/9dY29E89mnFafhQ1KyhaqGujfi9h7Sg+PN8FRBQvxRqXdtyL6ajW9lwr2qsJHBscD94vezIGcu/5mEOYgrDBk4I+NwswKv0iY6U8tYK7aeK3QouFTxGHHE9yoPvV3RaLipQFkJXEfdLmDWSyg998OdEec9abXasJk1TOzuNOehHxLkN+ddmjXyyxFV6EZKC1ZeYkEsxihrv243vXzwwEpsWopN9IHfcH1u7gn9qVQIn/aZMrIITKH6g8wRUrxQwVMtH/8O9QMZWell0lvG
x-ms-exchange-antispam-messagedata: NdF1Hqo6PKYVG0iBhwXzbEqcAJQgGHG2wENIMHAk6sQRZqCtliWXIfWqI0zYdHrc5wLJNAYrfx05JgdQGGy2pvAPYCoEQOS+KiM0/yJpBscX8qYHECCVPU4uxnUPU37Mdm25HmuHCymM4eizbs5BFg==
MIME-Version: 1.0
X-OriginatorOrg: dc.MitsubishiElectric.co.jp
X-MS-Exchange-CrossTenant-Network-Message-Id: 7feadd93-8d99-4a43-3eb6-08d7bf203673
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 03:08:56.8336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c5a75b62-4bff-4c96-a720-6621ce9978e5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U7ok4QDb59CtKOB9RXZvrgn2RYeZCrOzc4gbRhExWDiOo5PaWj1PxHd7rSaxklUZuWvj0YTHe1id7KW9LsCz8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2SPR01MB0005
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Motai.Hirotaka@aj.MitsubishiElectric.co.jp"
 <Motai.Hirotaka@aj.MitsubishiElectric.co.jp>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Mori.Takahiro@ab.MitsubishiElectric.co.jp"
 <Mori.Takahiro@ab.MitsubishiElectric.co.jp>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks for your comment.

> Are you sure this is OK to do? exfat_get_entry_type() does a lot of 
> mapping between values, using a file_dentry_t->type, while
> fid->type is a file_id_t->type.

The fid argument of exfat_rename_file()/move_file()from old_dentry->fid of exfat_rename().
 * exfat_rename_file() <- ffsMoveFile() <- exfat_rename()
 * move_file() <- ffsMoveFile() <- exfat_rename()

The value that vfs sets to the old_dentry of exfat_rename() is the dentry value returned by exfat_lookup(), exfat_create(), and create_dir().
In each function, the value of dentry->fid is initialized to fid->type at create_file(), ffsLookupFile(), and create_dir().

 * create_file() <- ffsCreateFile() <-exfat_create()
 * ffsLookupFile() <- exfat_find() <-exfat_lookup()
 * exfat_mkdir() <- ffsCreateDir() <-create_dir()

> and at first read it's not obvious to 
> fid->me whether type is guaranteed to have the correct value already.

A valid value is set in fid->type for all paths.
What do you think?

--
Kohada Tetsuhiro <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
