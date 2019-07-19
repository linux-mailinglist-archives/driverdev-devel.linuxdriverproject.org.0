Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3096E512
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 13:34:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C45308793D;
	Fri, 19 Jul 2019 11:34:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X3movyH6h0yt; Fri, 19 Jul 2019 11:34:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EE2787698;
	Fri, 19 Jul 2019 11:34:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5ED4D1BF39F
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 11:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5366588042
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 11:34:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gV-uJu9+ZSts for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 11:34:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 795E38803E
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 11:34:22 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 9HAHxvPWKHMX6xXkIRGF6U0uGVsNJZI0irNPU7G8ckkRJsPvEpT8Q9lXvtNQ2tHrmJ+xbgJcZe
 ehA9Kl+68wm/P7qbbOeWYQt2UqVvhCw0H6jf7AylZYC3asj70566pKAyNw90PfJ1OeJ3f76Izu
 mCr0pWCAj5L5QJy+fX1JMs/u1YWRM6XOIpoeSV1UjuXSngaGVVczFNUvD6LoLdH+efrlkawnC5
 M9ptucVBYkpb8K222D1I/o4pw163kpe4dZx+HlbKTYm+Jj/n7i9yaSGhoHWfrkbCulY8Kr9C0W
 52I=
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="38937699"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jul 2019 04:34:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 19 Jul 2019 04:34:20 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 19 Jul 2019 04:34:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=axGc15rfkuuqDQ5Mcb2E/COHI3ZtaeuHfTv4kt46/lrlUKGyL+hX7T0jXCvDM4hUGwnAnqGsCOZd+b5RmDz3PMv+DyzLdVHzh2EXHWNghlVTFS3pkDLpQwavACFFKqZMUYtcMZSTriClQeAVW4KjRjo3FEXmdO9gv2MBdNtlThpcC5br6hCdgc0D2a0O8UCOTdOTdMmD+lYjEuFlcB6qfLA6qnbUoDVmzTbkM0CfTZlMhX+S9VJXIFZoOuEdgVTEu4oxc4+9jPgBZGCMzuCS4+ucqoPrpXbStmWRMDrgvgbellzeD812fFeAME+kWBn3Jq/PxQF5wyd5VMVbvshCVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ewje1OrZEmiwknx0jsN7gpq0TSuDGawzaNgGJVfHY0M=;
 b=KBnNdtrQMtP2L3vviHKyajRaiYHGahGcm8skSOQw95Qbo3dOvkO+bzXy5F1p5UEU0JLKiu70HbO8m/q4j00GHxRnWU7JTd1gQ4RAQatLZjszeqKLojuF/Lfm9cBCXYVxW+Ggj1usbwsojxgGYLyTbLeE8+0oHek5GpCmMFD7QFvTE/oxlBwblwAb/ItbS1CXx9cuQ+kKWDR5BcecurHuEkVoJ9/F/3Tgghi/RsHPymU1fkgyDE8isc7H5zgsLFb19MYwwMAKJlVF0zAFCrajmmQwLe+hK4peG77vqbONTtN1MSjUd3wVL7z1eTDEPSRCgmpbSbc4XxZWirajPp6oSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ewje1OrZEmiwknx0jsN7gpq0TSuDGawzaNgGJVfHY0M=;
 b=bSfWLbXvOpRDsUqkU2N8A37fRZPZNriOZKlOVsFki+MMvCS0fyynxseb0W0SAMZ7pbWPvBMG6C1zjvRsgmXOdTUkt7usOTRJzHvy01/zzgWiUl92RAZInunhRXe4UsoWNQoP73PMgJiluGQ4uFnx1fzt3Gqg2YiKJb/M1fF68mY=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1716.namprd11.prod.outlook.com (10.173.33.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Fri, 19 Jul 2019 11:34:17 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::54db:507:e9da:5086]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::54db:507:e9da:5086%6]) with mapi id 15.20.2073.012; Fri, 19 Jul 2019
 11:34:17 +0000
From: <Ajay.Kathat@microchip.com>
To: <hslester96@gmail.com>
Subject: Re: [PATCH] staging: wilc1000: Merge memcpy + le32_to_cpus to
 get_unaligned_le32
Thread-Topic: [PATCH] staging: wilc1000: Merge memcpy + le32_to_cpus to
 get_unaligned_le32
Thread-Index: AQHVPglvMqeECHTdUkeF0n7ouW4TM6bRz6sA
Date: Fri, 19 Jul 2019 11:34:17 +0000
Message-ID: <8c14743d-efe1-3e3a-0419-bde22f848751@microchip.com>
References: <20190719081005.4598-1-hslester96@gmail.com>
In-Reply-To: <20190719081005.4598-1-hslester96@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0041.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:c::27) To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [49.205.218.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcf15511-97f7-4429-5857-08d70c3d08be
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1716; 
x-ms-traffictypediagnostic: BN6PR11MB1716:
x-microsoft-antispam-prvs: <BN6PR11MB1716E68D1F5A60D1374E6518E3CB0@BN6PR11MB1716.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(346002)(366004)(396003)(189003)(199004)(2906002)(7736002)(8676002)(256004)(6436002)(486006)(31686004)(186003)(8936002)(476003)(71200400001)(54906003)(316002)(6486002)(1411001)(31696002)(68736007)(36756003)(66066001)(99286004)(86362001)(53546011)(386003)(305945005)(478600001)(76176011)(25786009)(14454004)(229853002)(6506007)(52116002)(53936002)(6512007)(6246003)(78486014)(81156014)(6116002)(3846002)(26005)(4326008)(81166006)(446003)(64756008)(66556008)(102836004)(66476007)(71190400001)(66446008)(66946007)(11346002)(6916009)(2616005)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1716;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: j1vFk9/TA94SqN8P0CQBQp2PWEG7Jzh8oRtoXSiIAuOWjQFg/ZaRkN7+sm9ojkmUys9q4ea2naXDkx4fr1/miQPayuqFrqqf1xyaZ3/IfihxTmpOMJLsEHGvwxM83bQXrICr9ZfeoHLBgYocnYsTgFlrSIMY+//h3ihOZlwKU37q19VUVipgziXyFs/NpU9ktANQ8Pt1FNI3hknco41BZCBduEIDvbbM7ZtJSb6RPhL9F/jvVQuZ3vPAykIOPnV+Vwff6zPAFIDM2EPu+QEeKeAj5Mq6AArKr+gTBD+Vznfqm8fH/WilbWcDckl25+b6ArhljOnoKRAiW4rfXT1LAOpPnZBKMt/dqX6LGNCpMCZkuGld1DR/UiX0JFKtCm4ShB5k0AuAwJRmvgdK/oVIwgvmhVEKhFqme911THAKxEY=
Content-ID: <51182E83F4814747BE92D343F9FF7412@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bcf15511-97f7-4429-5857-08d70c3d08be
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 11:34:17.7943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ajay.kathat@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1716
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/19/2019 1:40 PM, Chuhong Yuan wrote:
> 
> Merge the combo use of memcpy and le32_to_cpus.
> Use get_unaligned_le32 instead.
> This simplifies the code.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index d72fdd333050..12fb4add05ec 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -1038,8 +1038,7 @@ void wilc_wfi_p2p_rx(struct wilc_vif *vif, u8 *buff, u32 size)
>  	s32 freq;
>  	__le16 fc;
>  
> -	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
> -	le32_to_cpus(&header);
> +	header = get_unaligned_le32(buff - HOST_HDR_OFFSET);
>  	pkt_offset = GET_PKT_OFFSET(header);
>  
>  	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
> 

Thanks for sending the patches.

The code change looks okay to me. Just a minor comment, avoid the use of
same subject line for different patches.

Regards,
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
