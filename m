Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C2BC07FF
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 16:52:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25E5C86308;
	Fri, 27 Sep 2019 14:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b5MCQIoBhaGJ; Fri, 27 Sep 2019 14:52:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C5078609D;
	Fri, 27 Sep 2019 14:52:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C74F1BF32A
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 14:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 692D38682F
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 14:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cr5abj78UXqe for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 14:52:18 +0000 (UTC)
X-Greylist: delayed 02:58:16 by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30075.outbound.protection.outlook.com [40.107.3.75])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 87BFE86822
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 14:52:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PStmOSk6C1sTBbB3p2vr+ENbMxt80bN0c7ECmmSsw4A8BcgjJbK36vp5rp8PcYkVWzlc6Bt6HCJvCyvwVXHYahWZKFn9Z3ER2t3kmdd9NdSrveGFxc11+RTwVbpm8K861r5H9LXNQ49rLxrLdOAc2FWWepLzQmd/PoJyBEDtRVfIPTpDWYCYG6E5GneiWDZajK/HdwyYnZwazXcJDvCcPkHHgCwgQFhN+z3gdpdBY/2aKQp16x1EmVAuj9TMbxNDwcIC/4SGxCv0DFCjmrteQKzQb1GNdDfbeWnfieidKPuMyb2U1PhxQOLdPukhFr8CYV762Hb3wpFsJGS2lq2UKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cf2Rrk19m5stLBX3MKwJXsKaiNsDoB4Sj12sJbxzf5c=;
 b=FvDBzvXliLay7YeibwgFmYPrdRZ2uNUjg8wD0FRQy0fO+O1vxd35agexzQ2oBUVrmx9karshSYygRA7oTYre4l2IJl7pRYrevRUtZQzu3cBXHEDHKaRSWGf0eQSEnZXa9K2vpsy8Lu13tYFYKdeXcLZZDDiYDrOqHdvLVjUe738YB2LZN3vuPmYJA6RTI7+ZieAVPzyZuTE/R1Iud/uUpKlpUqx8lvaQJedLwGV1Lq9SpTZZ9yiISSGiRB2rFTjvf4AeId8Ri9Q5HAyEvzHizWFijHYnh6vW6ezgvuYyKXuWjL8Udfs4mPO8/nW3yfN0exiMpA5crwbgr6fZc51qZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cf2Rrk19m5stLBX3MKwJXsKaiNsDoB4Sj12sJbxzf5c=;
 b=TfVfEJA488UTX3h0wTTJymavtVMTJOR3HsB7BBCNPI3OjeYsR5g3TapEVZzCNYmZuCgMdvlw8g2qTGeV6kz3tAv7TkInemkl8yR1CWUBkCEUEoI5uTtMw3hZ3jjf2JtNKvnjJQAajDsApVAHuYMp8VJeWO70unDpwboMr+d9sF0=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB4574.eurprd08.prod.outlook.com (20.178.126.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Fri, 27 Sep 2019 10:21:47 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::d497:245d:cd0b:2fca]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::d497:245d:cd0b:2fca%5]) with mapi id 15.20.2305.016; Fri, 27 Sep 2019
 10:21:46 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] staging: vt6656: clean up an indentation issue
Thread-Topic: [PATCH] staging: vt6656: clean up an indentation issue
Thread-Index: AQHVdRu4Ho/eTM8MPUae7NlCGSnHF6c/UIEA
Date: Fri, 27 Sep 2019 10:21:46 +0000
Message-ID: <20190927102144.GA23080@jiffies>
References: <20190927092400.20213-1-colin.king@canonical.com>
In-Reply-To: <20190927092400.20213-1-colin.king@canonical.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0067.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1d::31) To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [65.39.69.237]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a52a3b67-a20c-41ee-6392-08d743348037
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:VI1PR08MB4574; 
x-ms-traffictypediagnostic: VI1PR08MB4574:
x-microsoft-antispam-prvs: <VI1PR08MB4574E4887EB18A7AC8332B45B3810@VI1PR08MB4574.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(396003)(39830400003)(366004)(376002)(136003)(346002)(199004)(189003)(44832011)(386003)(486006)(26005)(2906002)(33716001)(66946007)(6116002)(76176011)(71190400001)(52116002)(11346002)(7736002)(229853002)(305945005)(33656002)(66556008)(3846002)(5660300002)(446003)(316002)(66446008)(476003)(6246003)(86362001)(256004)(71200400001)(4326008)(4744005)(66476007)(66066001)(14454004)(1076003)(54906003)(6486002)(6506007)(186003)(64756008)(99286004)(81156014)(508600001)(6916009)(25786009)(6512007)(81166006)(102836004)(9686003)(8676002)(8936002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4574;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D7139iRJtnWn4+2zoihn5ranPFYMrdcEfDwSKXwlOrDhQjQvba202KUERc/CHaC8KXyKRfJasDOVxwL4gdHFKWJ/UCV2JDPVOQjokgvwJ2I5RQ6D6Isf0JTQuRM05c1E/mDJ9xpVFxUh/in12QU6HWMIjsGV8Z6LMoBDu2NB71oUWFTP4OwM5xs0LRXJlUrTrjkd7YXIxyj9oUFUWkYLh2pWbTqhU2gcwsZjhJ17QRcN0zTTezpBPVRfhBJvxfODfwYtpCrG3HzYA/BtNBnR8fuzR7Fcx92i3JMcr+J7I2RDUnQ5M9wAVxeJVsFKCvxQvz2LOL4d9NhsdThR1KEuxL3Uw4eakKdJDxnNBDLq87JVev1/QLy8DFn0mloW1nygERzlIgzSnDwxkeR+vWe15LByI5zGzu46+Eyt9dLTzcU=
x-ms-exchange-transport-forked: True
Content-ID: <25231B85C0A71645A9072151EBB444FF@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: a52a3b67-a20c-41ee-6392-08d743348037
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 10:21:46.6247 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FdROZS72dLsHt1d2b7kW0uWk5zsHyqrH2vQZYuRiOyV4GQcMdc682DyOdiZM4vcLbsmR87fhp+mvCLDsOfZpz8zFmaMBHMOuAfxbkyMaAyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4574
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
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 27, 2019 at 10:24:00AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a block of code that is indented incorrectly, add in the
> missing tabs.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 856ba97aec4f..3478a10f8025 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -249,10 +249,10 @@ static int vnt_init_registers(struct vnt_private *priv)
>  		} else {
>  			priv->tx_antenna_mode = ANT_B;
>  
> -		if (priv->tx_rx_ant_inv)
> -			priv->rx_antenna_mode = ANT_A;
> -		else
> -			priv->rx_antenna_mode = ANT_B;
> +			if (priv->tx_rx_ant_inv)
> +				priv->rx_antenna_mode = ANT_A;
> +			else
> +				priv->rx_antenna_mode = ANT_B;
>  		}
>  	}
>  
> -- 
> 2.20.1
> 

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Thanks!
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
