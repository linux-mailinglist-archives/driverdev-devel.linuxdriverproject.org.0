Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C32131C07
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jan 2020 00:03:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB8CC87614;
	Mon,  6 Jan 2020 23:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xLUK8zTxDmgi; Mon,  6 Jan 2020 23:03:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2AEC4875FD;
	Mon,  6 Jan 2020 23:03:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5C861BF311
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 23:03:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 591DE86119
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 23:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iv6bAvRvCKJV for <devel@linuxdriverproject.org>;
 Mon,  6 Jan 2020 23:03:47 +0000 (UTC)
X-Greylist: delayed 01:34:31 by SQLgrey-1.7.6
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60081.outbound.protection.outlook.com [40.107.6.81])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E932785D4B
 for <devel@driverdev.osuosl.org>; Mon,  6 Jan 2020 23:03:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2exxUuPiLTqa9/YAk9gg3+JAlzGJx78EAml78kIokOZYvID5UJReDo5elUuGgi3u5TVywOP6lEhvx+TDRPmFJn/U3K6bygPKQ5oCrThjSzsvuM6iwH299l6hItW1jXRIjdP02mT7qKE1EEW6rO9oK8EPyBdJOFw8LpOXwSgnstg3bNGBb0Kj9It/53/IFIMXGr/fxzKJS8v28XGWpvZiKferSe/QCv7zQcSij4TtCNTQ1g8rE7DIRrDn06euHldjg4UqvluE7f5fAWAMo0CpWH2DoGVkaxfKmsov4a6+zSFuXrdYkTjKXZjhEW5OEJCcgLjPdxVXM8wMP3EB7A/PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OBUWyVhfoGjBVm2kizd7FvYY6mMNJRe8TJmO9UNrzCI=;
 b=WmaqMdGYXJATnWgLdl31+MYhfwMqQq9uqmz01KINN723C/P6RK+z2r/6/C75uD0ey7WiokrqZ5m+GNEPNiYs+smuGzhrXLm7Pp2z/JHq7EDpWy2jxwI3oT76wOTxm9TPqpuXgQ0vey4QRNiLlYIMv4EHcaCVxhCRsCEm1lWCeOCZa+YW0Ibv6lUYTNzwex/FaKzxeJ/wrnf3PQ8aSMOmKm4dN7sKxjZPzb+7Xn7l9xa13aLSkxJ6LcKrf3TuMcgFnMrQLekewKdal3e8+xIxphexJS//wZHIbrTFK3OP30usohYpwwBmo5Tzo2bsQE2bBifh9rOsPeHTs3QGEqBT1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OBUWyVhfoGjBVm2kizd7FvYY6mMNJRe8TJmO9UNrzCI=;
 b=Lx5VbCApAvlscaFZ4zfoU+CQPQVaQpBRNsnf3FGiX9EOaaT+7lfAzZhbixvCFbvYGy96sUvT+QA39myZC6zXbG9TitkRxfpoOvSYnXw2YW3nmQRnTVlYDgfSWyP65z5Q84PiNT4dMWR/dpTVvhsAOAZpqqf2GxrAygVCKRf0/uU=
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4380.eurprd08.prod.outlook.com (20.179.43.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Mon, 6 Jan 2020 21:29:12 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::11b4:6ffd:de3:a862]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::11b4:6ffd:de3:a862%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 21:29:12 +0000
Received: from jiffies (54.37.17.75) by LO2P265CA0305.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12 via Frontend
 Transport; Mon, 6 Jan 2020 21:29:11 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Amir Mahdi Ghorbanian <indigoomega021@gmail.com>
Subject: Re: [PATCH] staging: vt6656: remove unnecessary parenthesis
Thread-Topic: [PATCH] staging: vt6656: remove unnecessary parenthesis
Thread-Index: AQHVvymPkthkrGEOIUC0/lb0tsdKH6feMlaA
Date: Mon, 6 Jan 2020 21:29:11 +0000
Message-ID: <20200106212909.GA54084@jiffies>
References: <20191230155520.GA27072@user-ThinkPad-X230>
In-Reply-To: <20191230155520.GA27072@user-ThinkPad-X230>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0305.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::29) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [54.37.17.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1cd016f1-f105-4537-8eef-08d792ef78bc
x-ms-traffictypediagnostic: DBBPR08MB4380:
x-microsoft-antispam-prvs: <DBBPR08MB43808ED2FD27686538292795B33C0@DBBPR08MB4380.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:431;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(39830400003)(396003)(136003)(189003)(199004)(66476007)(6916009)(1076003)(44832011)(55236004)(53546011)(66946007)(66556008)(66446008)(5660300002)(26005)(64756008)(956004)(86362001)(4326008)(9686003)(33656002)(8936002)(508600001)(71200400001)(33716001)(54906003)(52116002)(16526019)(6496006)(8676002)(316002)(55016002)(9576002)(2906002)(81156014)(186003)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4380;
 H:DBBPR08MB4491.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9rE5duUSZ1buAMf4lJBy+PaSZYbWSgFSgWyD0Pw9ohpXYee1ed+GEfHAgwVLRn56p2mh6DcPc4/kHyN3NM32TKvNGmC/FVuRBLgqhpv0AzprgA+C10aKPDitz/QuvTc+TybgAxNQ1G6hG1/YW26vlgzlYIgz4dt+jizsKWC92dKStt76MQrbfGalQjAFBFdFUC8cDVQrY9towJBdlTqajoYWAkUuowjb79slRbUNuOch2KDO/PQGJvycDEejvpcItJSX53BZkut7ErsySchIMZ0oCIh51hfVu1quDH8GtK14mHeNGHouH4Mh0hLx+sBuE1VOqj2ly860jrZ4avG3yUQJ0aS0su9NKYOfQc50JCJAcUOxRrGweKNSF20JlE9XaYLh9RgPs+MpXOgJWQciQJf8jlAwvPDwXMR4N46qdsHDn9ZxbiKjEg6EzvZSzPsB
x-ms-exchange-transport-forked: True
Content-ID: <5AE5B2A8DE48D04AA2DF6B6D212304F6@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cd016f1-f105-4537-8eef-08d792ef78bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 21:29:11.9345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9U2QkJDQWW22yUnm16RqWHSuVx7RP5cEbsi8Mat+XkDyhG7S5Thoag/5DW17S5ZRI5LS9ab0j8J9E58vf/4+06hRiAqKKR79XSTnRidZBbY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4380
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
 "forest@alittletooquiet.net>" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 12/30/19 10:55:20, Amir Mahdi Ghorbanian wrote:
> Remove unnecessary parenthesis to abide by kernel
> coding-style.
> 
> Signed-off-by: Amir Mahdi Ghorbanian <indigoomega021@gmail.com>

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

> ---
>  drivers/staging/vt6656/baseband.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> index 8d19ae71e7cc..25fb19fadc57 100644
> --- a/drivers/staging/vt6656/baseband.c
> +++ b/drivers/staging/vt6656/baseband.c
> @@ -381,8 +381,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
>  
>  	dev_dbg(&priv->usb->dev, "RF Type %d\n", priv->rf_type);
>  
> -	if ((priv->rf_type == RF_AL2230) ||
> -	    (priv->rf_type == RF_AL2230S)) {
> +	if (priv->rf_type == RF_AL2230 ||
> +	    priv->rf_type == RF_AL2230S) {
>  		priv->bb_rx_conf = vnt_vt3184_al2230[10];
>  		length = sizeof(vnt_vt3184_al2230);
>  		addr = vnt_vt3184_al2230;
> @@ -461,8 +461,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
>  	if (ret)
>  		goto end;
>  
> -	if ((priv->rf_type == RF_VT3226) ||
> -	    (priv->rf_type == RF_VT3342A0)) {
> +	if (priv->rf_type == RF_VT3226 ||
> +	    priv->rf_type == RF_VT3342A0) {
>  		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG,
>  					 MAC_REG_ITRTMSET, 0x23);
>  		if (ret)
> -- 
> 2.17.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
