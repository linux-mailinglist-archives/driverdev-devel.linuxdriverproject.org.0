Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8498F8AFE1
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 08:26:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24BBE87E72;
	Tue, 13 Aug 2019 06:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6odlHgaaJjK9; Tue, 13 Aug 2019 06:26:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 747ED86A9B;
	Tue, 13 Aug 2019 06:26:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 054B81BF3EF
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 06:26:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 01644226D0
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 06:26:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h-02kIRZ4Rca for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 06:26:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id 0C2D4203BA
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 06:26:00 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 8lf02kUjLyXAEO3A1HmfE+wgawtVQlZLcSgjVCgQ89Rc+XlVaFPUH88VuOB623JgnnurPh93JA
 Iz/bP3e3Uua8qdqcVUoK75tfn7IwdzBqf/8jkx9xVlrqlPn+sYYXIu5jQEJRs/U9xFNm5PZ70O
 cj1US1IwsjMUAimRxl2HhQGjtlhhR50MxGHxJq7tT1jFrCr91IwPCKzv5I/6gcm80BH1tHj32H
 f2jaQJ2BRF25UwDbX5U99zaAyVrY1uc60F0AdJzgEg/c2ca0s+Dox2Ijh573DPrWQu9fme7XAE
 zxk=
X-IronPort-AV: E=Sophos;i="5.64,380,1559545200"; d="scan'208";a="44926396"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Aug 2019 23:26:00 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Aug 2019 23:26:00 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Aug 2019 23:26:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TryCo0sjhvlatrJAykXkE7+c7vjvaWeFsOm0WzjsShhWiPdgIortrda/6jiz3pYkfjkfkqJ5Qvk0bhpUN5OEGU2VRnIUvrShem69SMUesO/oxxYy/YXFjjJajA7ntditOs3E1iDw/fwugI2tTKt3uR2kqcR6pcCLTv7MtK1O4ZONHXsZwjt7LNzACC8ALtWN3c6tsc89PXv7PUcuAD0ITArWAJJRnfO6I4jtBiFV7VvViC4buiRU4PZeLk/ueSvs0qXoux+MSU5jr9RX2ofWkJiRmU9GL3Nu3/MO5U0IPuD94OrAijpRWMm0+F/r6+gyQRLeg7BJ3YNpZ9BPBx8tPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5j/FrqmQ/ygPKLYef6Zfixu9otvi95miSo0a4P/SyUA=;
 b=gQe8nj5Oa582FwOpnHV6/OF6cCE8C3+M3tKL7Oth8na+YSS6JygQpn4q01+HeJneChMI0LmlkD+Q0j333ZnZNwF6bJGmE0uk9zzBsLeGW4v3d1xqi8zAqPEW9ogA13FctLtsNjz4cC8h1Qz4QcBFfAh9DcZidzgTXOvAcFhShANtRLYIttzrkdPAVSqF14vJEvkvy2Wt0/02HOdNtZCUPIVB4lAWtHrYe4Afgv6HSV3E7KGUSKcbGwTNLkHj/DolU81AHFPmHbRBJjEubOr+pdz3DyQLHgmLCbTLGVNkE0ZN7ZK6sbaJR9HVLyvmEHy9PQJav1HJpGV01lXhMT7qHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5j/FrqmQ/ygPKLYef6Zfixu9otvi95miSo0a4P/SyUA=;
 b=GAhUeaumDA9LfFIYwU09go903aL5w1wepFiMSgKJRstjBPrnLAw0ZRb8Vf2AuQu46Y1VYTGW8E7Ajg7z9M0iu6M35rwngybqHxqWiQXTaDRZyhOk4aITaR+1kp9D8JFpEJPYcTc6GIgnO5NBjijrAsqFZATKoafTYgpk8VgidOI=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1665.namprd11.prod.outlook.com (10.172.23.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Tue, 13 Aug 2019 06:25:58 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::c0de:189e:f619:e8f6]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::c0de:189e:f619:e8f6%3]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 06:25:58 +0000
From: <Ajay.Kathat@microchip.com>
To: <dan.carpenter@oracle.com>
Subject: Re: [bug report] staging: wilc1000: added support to dynamically
 add/remove interfaces
Thread-Topic: [bug report] staging: wilc1000: added support to dynamically
 add/remove interfaces
Thread-Index: AQHVTdb7zfSN9EKv9UOXTHP1TKwaRqb4pC8A
Date: Tue, 13 Aug 2019 06:25:58 +0000
Message-ID: <6eb384fc-4acc-c9e4-2c15-c8862120c8ec@microchip.com>
References: <20190808104831.GA854@mwanda>
In-Reply-To: <20190808104831.GA854@mwanda>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0118.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::34)
 To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42587d59-ae2b-4365-75d4-08d71fb71a90
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1665; 
x-ms-traffictypediagnostic: BN6PR11MB1665:
x-microsoft-antispam-prvs: <BN6PR11MB16655018A39445CB100C3D6EE3D20@BN6PR11MB1665.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(366004)(346002)(39860400002)(199004)(189003)(186003)(31686004)(5660300002)(316002)(26005)(66066001)(6116002)(3846002)(2906002)(305945005)(71190400001)(71200400001)(7736002)(8676002)(446003)(66946007)(81156014)(478600001)(386003)(36756003)(43066004)(52116002)(2616005)(4326008)(53546011)(6506007)(14454004)(102836004)(6246003)(25786009)(6916009)(3450700001)(8936002)(11346002)(31696002)(256004)(14444005)(76176011)(81166006)(6486002)(64756008)(66556008)(66476007)(6436002)(86362001)(6512007)(99286004)(66446008)(486006)(476003)(229853002)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1665;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 82EYtcRxleVlp7HOalHA98SlM+e6QkXq29Kl+hN/T2ljTydGGz5TBRXmKDhpx0sRLkJBbNRzFgLh7y783G7XyoAQKgFWO8yUCOPLe4zdGAuEq52SjJzE2phjZKMRPf/mSTwtxUKDHN+dr+dKn0LWeLZk+g1ZgRDDVDVe2++9MCanNSdxcvpvcH3ajLGAdT6PZv9S1YU/IRHYmACdg5F+Ibf6L7DcabJ3Ux3zJU62pdh/lBgMx7U+tPM35PvKEYkaFAjr5wip5WJXlhA58pDKvjRB0oocr+MZmxDhSsoFS7f50KtT4fQGuEcxCUe22IxKu67lhhRlQiPovCaF6KMBGk69OET/dBhpcDaC5L767z7QTW2LAL9uZCAJFcJF6woyzCpaUyRgFoSRyN34feaQTreQE7EzgK4gV30qDkpRPQU=
x-ms-exchange-transport-forked: True
Content-ID: <983E6DD9098E7542865B0FF7D31FB5DA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 42587d59-ae2b-4365-75d4-08d71fb71a90
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 06:25:58.3284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: plzWUL++WtwHGVkpbY7Gl/PPCaUyApX9hdNNxKsdSzFkElSRGBHwfZRUSYHI/Sz+jSJ/2du0eN9TqGWqBDjBWOwiISu41xfUQkujyJtuX80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1665
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
Reply-To: Ajay.Kathat@microchip.com
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On 8/8/2019 4:18 PM, Dan Carpenter wrote:
> 
> Hello Ajay Singh,
> 
> The patch 9bc061e88054: "staging: wilc1000: added support to
> dynamically add/remove interfaces" from Jun 26, 2019, leads to the
> following static checker warning:
> 
> 	drivers/staging/wilc1000/wilc_wlan.c:497 wilc_wlan_handle_txq()
> 	warn: missing error code here? 'wilc_wlan_txq_get_first()' failed.
> 
> drivers/staging/wilc1000/wilc_wlan.c
>    474  int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
>    475  {
>    476          int i, entries = 0;
>    477          u32 sum;
>    478          u32 reg;
>    479          u32 offset = 0;
>    480          int vmm_sz = 0;
>    481          struct txq_entry_t *tqe;
>    482          int ret = 0;
>                     ^^^^^^^
> 
>    483          int counter;
>    484          int timeout;
>    485          u32 vmm_table[WILC_VMM_TBL_SIZE];
>    486          const struct wilc_hif_func *func;
>    487          u8 *txb = wilc->tx_buffer;
>    488          struct net_device *dev;
>    489          struct wilc_vif *vif;
>    490  
>    491          if (wilc->quit)
>    492                  goto out;
>    493  
>    494          mutex_lock(&wilc->txq_add_to_head_cs);
>    495          tqe = wilc_wlan_txq_get_first(wilc);
>    496          if (!tqe)
>    497                  goto out;
>                         ^^^^^^^^
> Should this really be a success path?

I think, returning value '0' is safe here. Only 'ENOBUFS' return value
is used for retry while other values are not considered. The 'if'
condition exit this function in case the list is empty. And later the
elements will be fetched again once'txq_event' completion signal is
received.

Regards,
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
