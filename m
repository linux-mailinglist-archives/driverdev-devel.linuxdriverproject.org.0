Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45407CDEC1
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 12:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 066BF85F3A;
	Mon,  7 Oct 2019 10:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9fVq306cneE; Mon,  7 Oct 2019 10:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C9DD85F09;
	Mon,  7 Oct 2019 10:08:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F0B71BF3C2
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 10:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 85092875B3
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 10:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V+G6DarC35xZ for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 10:08:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00050.outbound.protection.outlook.com [40.107.0.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 28F25874F3
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 10:08:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jhlKi9yUMYdNuvqby8cNz23nd+K14XLPjs3XzL0VJBJZ5q5WTcT89LI/b+Th+xQf6V3l6T0NyKJPoYJpcZUM3z2pm56QgpyN8Ziuzpcb+hpnOiCFuURHDEUId4rMIBb3qoUsLdMQ7POyL3h8Qr/TRwjE1amxF3W5GSzEUb2UylxN+yXTswK7uatLt2dWh7F6AuSPdVF53lx+YdSabW1WBNw9TjutFz7CtArdkICbcTq026zyrWISbzK3eIqnvAnqMlOUIqHz8uR06hvWppLq0cBAhYmGGXXwHm/j56TER75+p6nHE4//sdGdk9+njJ3miSwORy5bS6Ax5/qBsMRwJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bmZkZyjXKEUah/Jlr/MgdorGKmGADLWOMr9xmVHdQQo=;
 b=Gy9RGc4s5nMJ1Ynsy3jX8obJm+zdibuI+9BNql+LQUgPxjxpUX0FhYPDMVX+GzYtvET+8kgVFkwbhkZ+LFpG2ZSjbS4n1MOXSwEM/f3tu+Xhej0YEe5XG0XtYQh1SYr7rdTomTWkK2IIknbqiRM/SAsVy1cF/+6bYlQqXXF8IG22dc0xPjtdphf2/jGGqixdzH/HVtdEDb+IcRegaXRRV2Y59OIH4gUfqlAzCqie7JP0Slk1oOm0wTX7F84m7Vld4F0bums44faz2fhO1b/PwiBw92ApxpkolA0drmeiUEn7SXlKvbOKnBMiWfpMWr4TD6YNgp0lDXMM5yGdUGPkWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bmZkZyjXKEUah/Jlr/MgdorGKmGADLWOMr9xmVHdQQo=;
 b=qMGfFR5zg8FhfEYZCaFL0lYsT6fctkhRn9GO7wdf6S1oQDgDerU2UeSMP1R3a3+X92MuoIO+OC87q4fOVf1ApqZU2xstXasf/3wybMl0c/W7669gVrwhfO5MD9vBpGW3qv0gu4FiIWIZ/BrMyKDM2vOynkSe8vvIExzwDmEXyOc=
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4648.eurprd08.prod.outlook.com (10.255.78.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 09:33:15 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::4c2f:e455:fb07:bdee]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::4c2f:e455:fb07:bdee%6]) with mapi id 15.20.2327.025; Mon, 7 Oct 2019
 09:33:15 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: Re: [PATCH] staging: vt6656: remove duplicated blank line
Thread-Topic: [PATCH] staging: vt6656: remove duplicated blank line
Thread-Index: AQHVfICBMETYKv8JVkao/iXduhbl+6dO63mA
Date: Mon, 7 Oct 2019 09:33:14 +0000
Message-ID: <20191007093313.GA9232@qd-ubuntu>
References: <20191006195854.9843-1-gabrielabittencourt00@gmail.com>
In-Reply-To: <20191006195854.9843-1-gabrielabittencourt00@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0019.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::31) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23c6464f-353a-4406-dc27-08d74b0960bf
x-ms-traffictypediagnostic: DBBPR08MB4648:
x-microsoft-antispam-prvs: <DBBPR08MB46485202024FBE8BAC57B7AFB39B0@DBBPR08MB4648.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(396003)(366004)(136003)(346002)(376002)(39830400003)(189003)(199004)(486006)(6486002)(305945005)(86362001)(6512007)(66066001)(9686003)(76176011)(44832011)(4744005)(229853002)(2906002)(25786009)(476003)(99286004)(5660300002)(3846002)(446003)(71200400001)(71190400001)(6116002)(6916009)(1076003)(11346002)(6436002)(7736002)(102836004)(6246003)(6506007)(386003)(4326008)(186003)(1411001)(8676002)(508600001)(33656002)(8936002)(14454004)(81166006)(81156014)(14444005)(33716001)(256004)(54906003)(316002)(26005)(66476007)(66556008)(64756008)(66446008)(66946007)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4648;
 H:DBBPR08MB4491.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:3; A:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YQ/w6bJJF9oPqEVbU/qzkzHTihf2jX403KEZjV+KRJdW7GYXYqeNJEiFb7RpIY+x16JQOaSWMgSUoRRD3eKbWdxEmU8kAhaxfx9Ki6Oqe8QwquCkzSWENT9lVKi6CxLJhwctOxunHrPDvgLe9amFcmgNGjHQogwhUkVLrhsryv/4oanBV1Df47w7nBycjbXIwSH8BnHpqKEZMnJWmaSDrQNX444uImZPibbkkeO1dcjBpXU+Th2BAiwgZXrqCRAWBocvzIWx2y5kt8E7NEBgFMzhP8TgLyPDFl1/rQhzawh9wil27czUNifxGS2jmLtEnddqUZGo2pk0cyvwaPTmvpVGXYpZCtjS9Uc5nkVcl6N5C/zuIZfOcMp52k4nloCT4MYjXrc0THq6Su8TgTu2G2pJydttGI4iuz0DVs+6TnE=
x-ms-exchange-transport-forked: True
Content-ID: <54A2AFC5AFBD054E9BD6CA75401561CD@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 23c6464f-353a-4406-dc27-08d74b0960bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 09:33:14.7629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aHrdW3KaPmtsGH9eQY4iN5F8jfGJtunKUL3WILGJgPmJQW0O6dvGBAgimzY0194rdp2fTvi+NBqMoLt+G3LJo2mT+L41q3meMURf8BLvGMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4648
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
 "trivial@kernel.org" <trivial@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
 "forest@alittletooquiet.net" <forest@alittletooquiet.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 06, 2019 at 04:58:54PM -0300, Gabriela Bittencourt wrote:
> Cleans up checks of "don't use multiple blank line"
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 856ba97aec4f..a1884b5cc915 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -362,7 +362,6 @@ static int vnt_init_registers(struct vnt_private *priv)
>  			goto end;
>  	}
>  
> -
>  	ret = vnt_mac_set_led(priv, LEDSTS_TMLEN, 0x38);
>  	if (ret)
>  		goto end;
> -- 
> 2.20.1
> 

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Thank you,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
