Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A66E7257B3
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 20:43:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C67248614E;
	Tue, 21 May 2019 18:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5m5uhHAc_Bxd; Tue, 21 May 2019 18:43:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D411E83553;
	Tue, 21 May 2019 18:43:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0701BF5A9
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 18:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3704F8349B
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 18:43:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H5PAeY0seUdR for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 18:43:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2B4B183487
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 18:43:37 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,496,1549954800"; d="scan'208";a="34046847"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 21 May 2019 11:43:36 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.38) with Microsoft SMTP Server (TLS) id
 14.3.352.0; Tue, 21 May 2019 11:43:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8L7sQcUUreJzvv+KdquaYGZ3YdkFj/9QthmEThiJJY=;
 b=UQamTczc0Psv7OgHGjHPvAV3XBPUw17YR4UXAFlVcTuxupCIsOd4JBBPYptiVTmsEg8h0FUpr+0IuyEHkKgthlsg9WcPEsGFztbprFWbis638IagC4iGSCdNG2Ghg6pazeHlAmaidjams8+jTvZywaeWbQpsRaz99ZYSoX/pznc=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB1327.namprd11.prod.outlook.com (10.169.237.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 18:43:27 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::9ce9:4621:3c3f:a961]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::9ce9:4621:3c3f:a961%4]) with mapi id 15.20.1900.019; Tue, 21 May 2019
 18:43:27 +0000
From: <Adham.Abozaeid@microchip.com>
To: <colin.king@canonical.com>, <Ajay.Kathat@microchip.com>,
 <gregkh@linuxfoundation.org>, <linux-wireless@vger.kernel.org>,
 <devel@driverdev.osuosl.org>
Subject: Re: [PATCH] staging: wilc1000: remove redundant masking of pkt_offset
Thread-Topic: [PATCH] staging: wilc1000: remove redundant masking of pkt_offset
Thread-Index: AQHVD9egnn/gbMbCgE+l/pOShkDQxKZ16nWA
Date: Tue, 21 May 2019 18:43:27 +0000
Message-ID: <f7460c62-2a44-df0d-afaf-04d1c990d2a1@microchip.com>
References: <20190521131706.30236-1-colin.king@canonical.com>
In-Reply-To: <20190521131706.30236-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
x-clientproxiedby: BYAPR08CA0043.namprd08.prod.outlook.com
 (2603:10b6:a03:117::20) To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 667d34e9-56cf-40e5-3e11-08d6de1c368a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1327; 
x-ms-traffictypediagnostic: MWHPR11MB1327:
x-microsoft-antispam-prvs: <MWHPR11MB13272826BF33DD4C3F7F4F848D070@MWHPR11MB1327.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(366004)(136003)(39860400002)(199004)(189003)(54906003)(53546011)(68736007)(4326008)(6506007)(256004)(110136005)(305945005)(386003)(7736002)(58126008)(64126003)(316002)(6116002)(3846002)(53936002)(14454004)(102836004)(52116002)(6512007)(5660300002)(6246003)(65826007)(2501003)(73956011)(25786009)(11346002)(76176011)(486006)(2616005)(66946007)(66446008)(64756008)(66556008)(66476007)(6436002)(476003)(71200400001)(71190400001)(26005)(31696002)(6486002)(86362001)(2201001)(8676002)(36756003)(478600001)(66066001)(65806001)(72206003)(81166006)(446003)(81156014)(8936002)(31686004)(99286004)(2906002)(65956001)(14444005)(229853002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1327;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8eCPFPERT7ZPRGwIFBzvDQMs5IzEce6BPjMHoArICZXRmho5o0xhS8OVZu5ASKNUFE21ydfsZdNZKPGFgUmcaqjBAKJb6WL14wj5i4jwRey8MYH+r9GfaD1sY6P1PXfcI3ZKb2TlCmNrgeoIZQ1VrZuHPvJLFVxt94khm1ba6pgDc9iOIiZil0xR7Ah0xiopg6kXiTjNBIsLp0wq+EPJDEDfz4aiZceyyP6VQOhEjXuwoTFCN5iNMB9q7D0JEoaLA8Z6xZzukPN6E98C4LCquVQ1KME+Js8PIGenQAJYKxR0GH5XdXE5rmugYHbbXKdCS9t+1ax8kdDfsJzzRoRBB+R3ZMRMSJjgKkxS8rwJ/ZPlfLDcFa0anfAfeGgemScUYTslWVgc5H5105kEToZLMdgLOQgKVaQVBNjjsLdi/x8=
Content-ID: <BFFFBADA9DF8FD4CB170D5E21D1F32BC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 667d34e9-56cf-40e5-3e11-08d6de1c368a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 18:43:27.8596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1327
X-OriginatorOrg: microchip.com
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 5/21/19 6:17 AM, Colin King wrote:
> External E-Mail
>
>
> From: Colin Ian King <colin.king@canonical.com>
>
> The masking update of pkg_offset is redundant as the updated
> value is never read and pkg_offset is re-assigned on the next
> iteration of the loop.  Clean this up by removing the redundant
> assignment.
>
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Adham Abozaeid <adham.abozaeid@microchip.com>


Thanks,

Adham

> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index 95eaf8fdf4f2..dcd728557958 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -709,9 +709,6 @@ static void wilc_wlan_handle_rx_buff(struct wilc *wilc, u8 *buffer, int size)
>  			break;
>  
>  		if (pkt_offset & IS_MANAGMEMENT) {
> -			pkt_offset &= ~(IS_MANAGMEMENT |
> -					IS_MANAGMEMENT_CALLBACK |
> -					IS_MGMT_STATUS_SUCCES);
>  			buff_ptr += HOST_HDR_OFFSET;
>  			wilc_wfi_mgmt_rx(wilc, buff_ptr, pkt_len);
>  		} else {
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
