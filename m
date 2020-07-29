Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B291232106
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 16:54:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D1E8123524;
	Wed, 29 Jul 2020 14:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PWANu6OEAsrv; Wed, 29 Jul 2020 14:54:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72573233A6;
	Wed, 29 Jul 2020 14:54:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11CFB1BF331
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 944ED87CF9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9MD1O5rEYkoz
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:53:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9EFE9878BD
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1596034413; x=1627570413;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ih3jT1SRgMIE5v+hPFQ0z1js6Bv6lEfREiyBuJb+xCI=;
 b=XU2rcNxDX/ccpqi77sNFUgIQLesLb3U1/mKKIcPHgbnhjuUtyEjZGRm6
 6PtIritvS9udjPet+XoYZNAXHbvkKMZF+QBmaKVcEf6nD9Nirn3qPoe2m
 MQZGVNSWvosg/DfmO9Ul3foyAXsLJgd5jplE82CLjyjArLVrzNXkrJZ3x
 TpYtS9KvI8SmKSZBz+rmwirm2nrKPhZRCmoiChkF27KOqiFQDpIgdvjuH
 uUNMa08imtMJlyMVzvSeO/4nSRRzmNlepwkaXiNr4dnScUwUUgeFkRFH2
 mvyWgRStNMcOiyKqE4+MfQIOXqUFG7tFd8010+A7JBVbCGXKTbGHYmOY6 g==;
IronPort-SDR: kI5Z+p8x/xpcqkBbqlGSrfUXW3YUCNnu9/tmaTM+cZrbcJ7PGavl+g8wiS2j64wxmalvJ7sm95
 CAuCsnx1snzldcuc6gz/6/XiNCf+Sqsk33znCV+uWi8yhfBl0gKcyXT/Wgrk+21fd7jihS1R+t
 c4UpQw+S/95CPHBldEWr0GVNihVURC7J8TrjY6d8jxzKoykPfXPkh/JeF1idMzUR65kce09yhP
 UA0M4bFDCiaz+tYjjTvfirA2FFJpWrx52tPTt7Q7CZeBa2whKHpweOxQfA4QuVvRNV0I0X4wfJ
 m+U=
X-IronPort-AV: E=Sophos;i="5.75,410,1589266800"; d="scan'208";a="81644772"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Jul 2020 07:53:32 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 29 Jul 2020 07:53:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Wed, 29 Jul 2020 07:52:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LfbDItqveVixq5wXX3CL6fn8oF/4JEHX7KGyW4hhJ/+QYXGf5dYyHS2UkxGLVHN1hA20rsvrbO3U7HDPmVpf3UECux76nttsDrXU0eD8kEE0nlzitzkdKJGCK1LHajvu95vrFnjXh7mFyoZ7UdL4JEH5y0K0z4BelLaYI9d5wy70o/cJcYOz3+G/+dwg5me7Hi1iX+h1dTIrG/zSu+JuJoXckfr+gHSqwE+fJRkfPGUTou53FFL7Helb0JPwjT0tR2S2J2b1CvFFv3TrC3RiPRWNMOjc/3TaGHVO+Om0pR1Szsr66ReLp0vFUUMm4UYyNAlewRlvroKnUxEUb8ee8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ih3jT1SRgMIE5v+hPFQ0z1js6Bv6lEfREiyBuJb+xCI=;
 b=epOzDrLWD5Y86fglg4D6Mx+0vSs8ITUI6uV6vua1OsDSViesTXNVFJkbOwpyhxZvPx/K48m5j/lkdSkdtGZmgPXuM95MkNeizW+Y3Ekox6jWPluBrp0E2OYNyUGX1+MHrIr7NmRLfC67YVEY0hgzpEZq2jLb42Xg6d5XOyFqKc92lk28kWXb4V3egWlODf2eth9Gh5wVVgCkhM/iH/oNG2Znrn0sTrBcwZ3ZfzwSuksYTdOvwBrlGofPtYr/omNfqIYO//dLnWEqY32rWN0NF0l8QFt7rbnTTMVCM89u8Dw1rhyYDwdOxQ9v6yQ/UMLCve6gMsQQdrKYZaUO+3vArw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ih3jT1SRgMIE5v+hPFQ0z1js6Bv6lEfREiyBuJb+xCI=;
 b=Dfh+b0eYIWvSN1+ztEMdZQUC3GqOUC32hT2HbdHOpidiheKFXvb3r/Q921YullTETBlV2vTgtOahfjW5ageh2NnOvL8NrOtHHSrhwh9lU+06YvK8Ig++tq0IAZJbpO+0KDHtdo5AA+s/KEDQxViYGGoLe88KNGM3HySSwCnJQDc=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM5PR1101MB2266.namprd11.prod.outlook.com (2603:10b6:4:57::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3216.26; Wed, 29 Jul 2020 14:53:29 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::e8b2:1d82:49d9:f4b]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::e8b2:1d82:49d9:f4b%6]) with mapi id 15.20.3216.033; Wed, 29 Jul 2020
 14:53:29 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [RESEND PATCH v5] drivers: most: add USB adapter driver
Thread-Topic: [RESEND PATCH v5] drivers: most: add USB adapter driver
Thread-Index: AQHWY/BDxH5Yo94YUUW0M5xBKSbJ9qkeoNWAgAAHQYA=
Date: Wed, 29 Jul 2020 14:53:29 +0000
Message-ID: <799deccc9cd874a2f36bbe93f9b880eea018197f.camel@microchip.com>
References: <1595838646-12674-1-git-send-email-christian.gromm@microchip.com>
 <20200729142715.GA3343116@kroah.com>
In-Reply-To: <20200729142715.GA3343116@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d133b217-143b-42f0-0c36-08d833cf2834
x-ms-traffictypediagnostic: DM5PR1101MB2266:
x-microsoft-antispam-prvs: <DM5PR1101MB2266AD93E41906AAA32F9B3CF8700@DM5PR1101MB2266.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EvNvG80V9wzIS0abEHXWuynU5dIfvdpKf6tpFQ6FHZXsPKGPbpKp6/c/AZcthx4XsCtqowa9od8uR2Iq2wPw+oTkQuQ4gx+7lnnQxolDSRhULqFZ6Ck4bLSq4mGysVp+I0x/D+W2kIN7EMfBvxG3kyCBO19FScaLz+b2jm5WwdlfMVPfQg/Xk//DfaIaj412R+hm6EXeJwhhb/PRDwMX9L+DWRSlc6GVANdUSbUZUDVxFE2JL4NTJzd+gFp//vTPc9/3dUNB89PjbCvoVXL67OeitpVVKgUPBhTA5ZaV5lsHzRLcgfhDf9jqu3wy+6KTQ7adh3t7ah44VnI882EJGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(346002)(376002)(366004)(396003)(86362001)(8936002)(4326008)(2906002)(36756003)(71200400001)(8676002)(316002)(54906003)(478600001)(6916009)(26005)(64756008)(66556008)(66946007)(66476007)(6486002)(5660300002)(186003)(6512007)(6506007)(91956017)(66446008)(2616005)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: uZK1wSG9aNfzIr/jD5IXsKaEgRKh9yhbR3/WrEhL9AcPZsKdlyOrTwcGgvtgcig2YbpUtc86DzBJs3+K9aJZLyqrPTMk/03sGb+gEXyBAKBxWFEw2QZ0WdYpAA1OArSb7qMnd1mFuvroeU9HvkuI5X7mezhcQWWVL1pGt8oO9YrisFVgxIwftmNw+1glf2iUxnyXBmhaAfQwgk2tfiOdwXAbSA435ZUgdtEvZoCJ++n6YgAA5Pj7La1trdrEu9zcHl241LUOBt2kVoiI0JMgzi9jhRzVaaJMl06ifetCeF1EuSDPPqzzC/8FInNBrsQ5mzTg3FuYhrr8WPVgY22RSq3qaMWOfgvIG3EH+XjaYUDdtKCNVv96rs1cvNG+7cu4qSb+uYpy+T3gSTZ9aO0B+ZB/Cw1pX60rClBFnjuqpFhjKI/5Q70sGuel8QNp3f5bXw5t3FNZAMe7Dvf6W1JvSTZZuFJKu7Abr9jLlEUBIIBqtb0yeT4bZPmh+V/gCUwV
x-ms-exchange-transport-forked: True
Content-ID: <5C633C0947D22240B82036E3E11809DF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d133b217-143b-42f0-0c36-08d833cf2834
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2020 14:53:29.8341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FOx6r8gIlsKRL2dJ7B/TWTTKGj43xVMaToflJ45vlJ2w4IoameiM47Xyb0ekqc9nagHx7A3ag0QCNUR5DrVYjsHrQyUWqbWKZ/X5c9MsmlE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2266
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
Cc: driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-07-29 at 16:27 +0200, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Mon, Jul 27, 2020 at 10:30:46AM +0200, Christian Gromm wrote:
> > This patch adds the usb driver source file most_usb.c and
> > modifies the Makefile and Kconfig accordingly.
> > 
> > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> 
> Sorry for the long delay in getting to this.
> 
> This looks good to me, but I tried to apply it to my usb tree, and of
> course I get the following build error:
>         error: the following would cause module name conflict:
>           drivers/staging/most/usb/most_usb.ko
>           drivers/most/most_usb.ko
> 
> So, can you just send a "rename the file" patch that I can apply
> against
> my staging-next branch and I will take it through there so that there
> are no conflicts like this?

Are you talking about (1) a patch that just renames the most_usb.ko
file located at drivers/staging/most/usb/ or (2) a patch for the
Makefile in the staging tree, so the Kbuild system creates a new
kernel object in this branch with a different name?

thank,
Chris

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
