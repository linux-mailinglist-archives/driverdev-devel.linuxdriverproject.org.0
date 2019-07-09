Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7AD63BBE
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 21:13:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9F57C21F65;
	Tue,  9 Jul 2019 19:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SmHSwouZo5nN; Tue,  9 Jul 2019 19:13:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 357A1204C1;
	Tue,  9 Jul 2019 19:13:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8FECF1BF280
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 19:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 86ADE87B9B
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 19:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Wa0t+XH2QiR for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 19:13:45 +0000 (UTC)
X-Greylist: delayed 02:34:13 by SQLgrey-1.7.6
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr720125.outbound.protection.outlook.com [40.107.72.125])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F6C886258
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 19:13:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7UV0asC5t9GJUAkFa9mjL2FGXv1qsjmP0dvCNBFYC1HBGzp204Jz2JMhUBin6FUmXn4W1nk7E1tRUoFmcVbBmfrW4m7P+glKLcfJMSPepdywUwtfmJ9M+KJK9AHfhPc5/0o6vPK0ACjZJG5n+EO8378hQmLbZGNsyqWjlqc4gXcMBCfOkRBKXHe9ijeWFMaR6AK4RixNmUvqxCVHQuks0NYJP88bkESxPrxEAVZiyZ4bVEX+mCUX8zBlmQfEMDYq3IxJlmGonMOl+2J9KfC4e7mxn+V5A+cS/B2ZYOF0SjDRicdTh2UTn0/DCHAB8J94eK/JA/plbkQDRcDvfEbKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dP3LNMtwIYWedXvp7hid1F0bR0TEPiBQ7tYYBhq+3U0=;
 b=apsTXTqJNASS/7XWedHEdPQvlkTASxOofh+M1JSJRjQ7Ef4sO56qvxiBnR209mADZhRUVh2qhyuiIUtxTXXALKxgy2iRat1SJGJeeqIi3HkVHRqQHgs8zQeLiyCRmwq5XyIkBfF30dwmJZtuF5a//N/7vnET3Pwb32y1g75/CbyCN5f59pY0H8odDlVBwhMOhw8O6AgjF9hRKvlWRl85tBXGk0p7cYLy1s/WAtDNgWeVb5lxWWpCpcwxj3HgwrN7GfbTTEbemX3Ju2LXSejbA4Z5FV1jZOFKP7rTfuzyxbZGY1GdP6ylDb7JKfT6BiSnlVluJd5UWiZxrv59y0PWOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dP3LNMtwIYWedXvp7hid1F0bR0TEPiBQ7tYYBhq+3U0=;
 b=CqGbga2LHM08AzUmuA1nBI2u97+tWIbYdIpArG2G7gDPMsgflks7r+AGhbM1W0gHDRUt0eejTDkusJp8d97DzVq6+mHG+j9PsiIhT6Ufbd+5joR2Iup0zDofjUdG7Lg9KVwXvcxPlv4cyiKDK19PzYWsv2lWvuwuUCZFfHfyHPQ=
Received: from SN6PR2101MB1072.namprd21.prod.outlook.com (52.132.115.21) by
 SN6PR2101MB0893.namprd21.prod.outlook.com (52.132.116.158) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.3; Tue, 9 Jul 2019 17:13:02 +0000
Received: from SN6PR2101MB1072.namprd21.prod.outlook.com
 ([fe80::f9cc:1b2a:1b20:808b]) by SN6PR2101MB1072.namprd21.prod.outlook.com
 ([fe80::f9cc:1b2a:1b20:808b%8]) with mapi id 15.20.2094.001; Tue, 9 Jul 2019
 17:13:02 +0000
From: KY Srinivasan <kys@microsoft.com>
To: =?utf-8?B?VmFsZGlzIEtsxJN0bmlla3M=?= <valdis.kletnieks@vt.edu>
Subject: RE: exfat filesystem
Thread-Topic: exfat filesystem
Thread-Index: AQHVNm3O4cwoiVd1wUyFaPLSrlI8N6bCfKmwgAADYICAAAX+sA==
Date: Tue, 9 Jul 2019 17:13:02 +0000
Message-ID: <SN6PR2101MB10721504993B62F1D6EBD693A0F10@SN6PR2101MB1072.namprd21.prod.outlook.com>
References: <21080.1562632662@turing-police> <20190709045020.GB23646@mit.edu>
 <20190709112136.GI32320@bombadil.infradead.org>
 <20190709153039.GA3200@mit.edu>
 <20190709154834.GJ32320@bombadil.infradead.org>
 <SN6PR2101MB10726033399AEA1D0BD22067A0F10@SN6PR2101MB1072.namprd21.prod.outlook.com>
 <24605.1562691043@turing-police>
In-Reply-To: <24605.1562691043@turing-police>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=kys@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-07-09T17:13:00.3872415Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=b52e4a9b-c05c-4bff-90d5-72834542d3f8;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kys@microsoft.com; 
x-originating-ip: [131.107.147.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe1c8405-6141-4117-a594-08d70490b350
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:SN6PR2101MB0893; 
X-MS-TrafficTypeDiagnostic: SN6PR2101MB0893:|SN6PR2101MB0893:|SN6PR2101MB0893:|SN6PR2101MB0893:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <SN6PR2101MB0893978BD40A176D9F82AA38A0F10@SN6PR2101MB0893.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(189003)(199004)(13464003)(22452003)(14454004)(4326008)(26005)(54906003)(55016002)(8676002)(81156014)(81166006)(102836004)(966005)(229853002)(25786009)(186003)(498600001)(76116006)(53546011)(8990500004)(10090500001)(73956011)(66946007)(66476007)(64756008)(66556008)(5660300002)(52536014)(221733001)(66066001)(6916009)(33656002)(6506007)(486006)(71190400001)(71200400001)(256004)(99286004)(53936002)(10290500003)(86362001)(6436002)(476003)(7116003)(2171002)(7696005)(6246003)(76176011)(2906002)(74316002)(446003)(7736002)(66446008)(8936002)(68736007)(305945005)(6116002)(9686003)(6306002)(3846002)(11346002)(3480700005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB0893;
 H:SN6PR2101MB1072.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YkReqCBulvsW55rHq5L6rlGwT6yp4oLvq7CVMtAZP9lUR2BqgPQA3zZSigiA56hNJSLhh3EKjobuDLyL7wnVKKwEWZ9gpT0wLPZjpZZEdN3MOBuTaOKkfw/1H4rF9a7IZ67UIYwA4DNpxC4WqkB94cQUhQb2/gNRQNZ0ppBv7ZOfWdNfRkEBjlFjFybChW32vBsk3eeRdUxjoFsc2Pi8Pm5e270dhRW/XGEqtdmylT+jOZFx4I/Eskj1rIgRnFSpagAl7WLrLUMF7P4w/EDSQIyaSrNi7wBQDkltJYXd1VQoGz72CGeFHPYy/+qivoqGn7oefbCLO7eNKa2GtITSO6ncUG9LNPmqQhkl7fh3GFIZ4G+fCu9sstk2UGKHSTuVKlzv4SHJYPtEKFwtXh0kmVr5vQjE/NSX+vmlb5r8VLc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fe1c8405-6141-4117-a594-08d70490b350
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 17:13:02.3035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kys@microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB0893
X-OriginatorOrg: microsoft.com
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
 Sasha Levin <sashal@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



> -----Original Message-----
> From: Valdis Kletnieks <valdis@vt.edu> On Behalf Of Valdis Kletnieks
> Sent: Tuesday, July 9, 2019 9:51 AM
> To: KY Srinivasan <kys@microsoft.com>
> Cc: Matthew Wilcox <willy@infradead.org>; Theodore Ts'o
> <tytso@mit.edu>; Alexander Viro <viro@zeniv.linux.org.uk>; Greg Kroah-
> Hartman <gregkh@linuxfoundation.org>; linux-fsdevel@vger.kernel.org;
> linux-kernel@vger.kernel.org; devel@driverdev.osuosl.org; Sasha Levin
> <sashal@kernel.org>
> Subject: Re: exfat filesystem
> 
> On Tue, 09 Jul 2019 16:39:31 -0000, KY Srinivasan said:
> 
> > Let me dig up the details here.
> 
> In case this helps clarify the chain of events, the code in question is the
> Samsung code mentioned here, updated to 5.2 kernel....
> 
> "We know that Microsoft has done patent troll shakedowns in the past on
> Linux products related to the exfat filesystem. While we at Conservancy
> were successful in getting the code that implements exfat for Linux released
> under GPL (by Samsung), that code has not been upstreamed into Linux. So,
> Microsoft has not included any patents they might hold on exfat into the
> patent non-aggression pact."
> 
> https://sfconservancy.org/blog/2018/oct/10/microsoft-oin-exfat/
> 
> (Link in that para points here):
> https://sfconservancy.org/news/2013/aug/16/exfat-samsung/
> 
Thanks Valdis. I have started an internal thread on this; will get back ASAP.

K. Y
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
