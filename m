Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57311232EB0
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 10:27:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5436924C2A;
	Thu, 30 Jul 2020 08:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pieXsyUEUJoc; Thu, 30 Jul 2020 08:27:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6069E20773;
	Thu, 30 Jul 2020 08:27:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3895D1BF489
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 08:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 342E187B4C
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 08:27:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QqCjBvZqXVKR
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 08:27:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3957C87A62
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1596097654; x=1627633654;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lJTKo33WRtT83sMtp1b4VdK93E+cnWY/m3FVf/+S5Lo=;
 b=EmTCIXnlHs6fllbjLR3OFzKa88nrTWUN0W9xxnIwx49JybdA2VocJ/lL
 9/KkMhN0tBetva6Rl9pxIPHSrQqpovL8EI4B2WxDbTOmnGgOknwdtNBMO
 P4LLr+k7osjC+XNLbl2LtshMXamocSldKC8syUQMF/jY5mYEBbyKTD3nL
 dLDGVxk0aFHkX+acPzWW8+qUwLW6EP9KazgfHh0psQ4a5BukJetwrhiH7
 OC8JAW6DNF7mXcDdevinlGhXpLMUtaIKCRSqcqik1LCC0YOGkre1nuV8R
 ewR9fHx+fXScbfA4V62IqWwxWhzkLT38NhEvefKbwKQOCyUDU3L9px/sO g==;
IronPort-SDR: sOj9ELTP+XgwucgtpX5m/TMoi1faA7EGXrTV/tNqw6WZP6QlCu2OD/z+0Lva6TPcN4XJ8Vtz+3
 Ba/ncA0dSOlH1sbi+btlMAlnjNHK8USFJ0WMQ0c7v7dmSMcajNLEf5D3p1xOyOQdhQHaPox4cM
 CC0+Z05Sqb6Egn5eet3iShIfnqNlokb4oX6qbu5NXDey4/ewniFY1itth9+voNG8Wi0cymmU7+
 qjp7iSBep95+PKZuWAA/PA29zdfJVDc7HCzMojF0AMy4cZ3hCd/f453/HTJb7xZiOU3kG7lTfE
 t3Y=
X-IronPort-AV: E=Sophos;i="5.75,413,1589266800"; d="scan'208";a="85153508"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Jul 2020 01:27:33 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 30 Jul 2020 01:26:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Thu, 30 Jul 2020 01:27:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=enOlAcSLsWruVH+tEDPV8BZvj5qEjztn4dyhnhTEuL0gdFeScnajudTNlGN+FhREW3VvdpDTyzgaV7xuuieFMHBEG/uHwRJTte6PZQtMQPfmybD1qSA/krBOSyxzDXsxsjVwWVaPX1Runrz64hNNnqP4WWg8KmjcEiAT1xOwjLnMUwoY74/6oZT8jU0lfwQ6wkLe/ByO1Q9HGiWFaZgavBMtD1Qb/cshXwUQbzKFM5WBzptUF39y1y4DfdLFS3AbgqHGol4Ed/GHe91beYEPxK22yJRdsu/vw7iY/RZvmZr4Er31We68Cc69kV7kFrsJW3XimCYm8YJS9/Z/uIvZ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lJTKo33WRtT83sMtp1b4VdK93E+cnWY/m3FVf/+S5Lo=;
 b=Amlw2FVckbYVaSXYbZvEJpQ0ujsdWaxlxC3WoTImoFG1JFqXM9rel9eVC3KRS8vh4YseZ/+ycfuL4SFQPOq9BdxgI7gtFJg0ORkTSoiKgSHIkSrph+KkecVhSPw9jFOpjI2gJUN3BnEEur3axS/IR9mdAo3mOiAuiruGnPqOFm/sUgSjWhiF3hmZcDDmOeM2yl6f+or2jGXAQX0QRXDQ9ygWfn+YLYpfgf3/6uUVw2FhmraUIGyG3bXIQ664HltebXjuhCgL3rMktN0iW+r3QUpqEzb7dRgSXX2ILxohBeGk2qNsu9RYH23xva3jYBYy+UC6kdujKJaQtE0rTcSDkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lJTKo33WRtT83sMtp1b4VdK93E+cnWY/m3FVf/+S5Lo=;
 b=CgBL7K112PPDNs3DB7rCxiVcBb0iyrAS3BepxMPmVpIyF9AW+qLW/K1csCN+x3xJSsGOaobLlRtedHgdYWxfs2+fDS+1Can2PNZtjO2vYxU90YH456W9ug9RfFeaqCYlesm999bFlMt7CTzcuuW5EqF16Ge2JSolEOPc06YC6Ao=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM5PR11MB1929.namprd11.prod.outlook.com (2603:10b6:3:10a::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3239.16; Thu, 30 Jul 2020 08:27:29 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::e8b2:1d82:49d9:f4b]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::e8b2:1d82:49d9:f4b%6]) with mapi id 15.20.3216.033; Thu, 30 Jul 2020
 08:27:29 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: most: usb: rename most_usb.ko
Thread-Topic: [PATCH] staging: most: usb: rename most_usb.ko
Thread-Index: AQHWZcbAC+mXhFR3VkCMSicPBDeFkqkeyLyAgAECJ4A=
Date: Thu, 30 Jul 2020 08:27:29 +0000
Message-ID: <d7858a29d2ef846a61bc48043b40c9956965189f.camel@microchip.com>
References: <1596040728-3353-1-git-send-email-christian.gromm@microchip.com>
 <20200729170313.GA3668028@kroah.com>
In-Reply-To: <20200729170313.GA3668028@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9c3fbae-3f98-4e7c-0354-08d8346265c5
x-ms-traffictypediagnostic: DM5PR11MB1929:
x-microsoft-antispam-prvs: <DM5PR11MB1929EB2FDE72DBEBD1997687F8710@DM5PR11MB1929.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f8f4OMf0A76LqbwcMOUnh77Ru5H7EOl5ZdCmZcZ8/2NcdGojNwtUmEgx4Wtd8Xkkg4mgQtcxG8PABd+eJR5grm85DA3xs+ICegxh2PKhqoK3sDeTbeasQlwuOT9gG2GR1oWtLaa9JmKWG9IDfqZiM5Ks5jkbjCnVXzMfzf3EGQnpkur/lqbCvYXx0t/8iee9nDy+B+WGY8Jyf12KUgI1RkIOWMtt8nzSIzFjjkZnadRUVb+MFFMCAg46OWd2zIRaEb/oU5o7WEl4HwAQU2gumq11UkDG28wIVZ0ulDhC2+SFGIT9AUylBAAZWLe5VWVnDiMOOItMd79KCR1Y/+9tww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(366004)(396003)(39860400002)(346002)(4326008)(2616005)(6486002)(86362001)(5660300002)(6506007)(71200400001)(36756003)(478600001)(8676002)(66476007)(66946007)(6916009)(66556008)(26005)(83380400001)(2906002)(316002)(186003)(91956017)(8936002)(76116006)(64756008)(66446008)(6512007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: AWLWEW+DDtBsi5VrrDz45HDEyU5EQTeHdOxc1eIG6Xoc+JjO9EfivRzMkhnPK5ClCg5jXAxPBQx1i1Usz5W3dV1qeQBJFAApEWL1GOa4tsL5h+W+D+anvE7WRyZ7gnSN9ToEV4jmVpdK0OZV4KOXQbpN7ocwJjo02FF8ON/ArwJeXx8avQi03JkwHwF8uVOXwYTaL32wZpjbgRy0SRa4Q9Z/iBOX/BLV8Crh1/LrLvqqKIlocqDS45V2eOVaMgCJ3lW/fEwYJXWjeu+vjebHznB0ME2xBXYyElFonX02JVGGWVhjB5jXs/4S+ClVv3WjM11wDUstJBcxL1qJBzftGeUhNEUoSURkYXR+xYOStSuq3WFmfnxKe4JBjdAJidRpW4XWbMzHEjzMj5cmNw/l3M891w5mu5v57ayaO2U/jDfehGX+famv99ftDdP/rQgdsZ8E5B+MHlu0sem+EEh+Djwn/sHEQnb1YGZBReYV4V0nqz62tTLJd3IMsKXDGdv8xPfL+ngQYrBVx8N8Tdoctrt36u+0WzhIayq8jtx044JwXOBoNaZKI8UK/NMqZfLXiRvdV7K7X6wxJFRyJMj/B6ULmcvVGXlOuGZOaaaJ870dDSOPiCOhLbOLeK2tA8+hPI8zCcB1ov23MiJx4T3RBQ==
x-ms-exchange-transport-forked: True
Content-ID: <E1AC9C1E29D8134A8740382A5FD01993@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9c3fbae-3f98-4e7c-0354-08d8346265c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2020 08:27:29.1045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dV23Aptgma7qdBRlwQQusOxCT7e8Hi22W6lkGpTUZSuqKmNz3bt/CF1CIcTosh9R76g6Ex4ADWJem4OpOzTQbVeXEXI00u4JVgD2i/hKCFI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1929
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-07-29 at 19:03 +0200, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Wed, Jul 29, 2020 at 06:38:48PM +0200, Christian Gromm wrote:
> > To avoid a name conflict when adding the usb module to the
> > driver's directory in the stable branch, this patch simply
> > renames the kernel object.
> > 
> > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> >  drivers/staging/most/usb/{most_usb.ko => most-usb.ko} | Bin
> >  1 file changed, 0 insertions(+), 0 deletions(-)
> >  rename drivers/staging/most/usb/{most_usb.ko => most-usb.ko}
> > (100%)
> > 
> > diff --git a/drivers/staging/most/usb/most_usb.ko
> > b/drivers/staging/most/usb/most-usb.ko
> > similarity index 100%
> > rename from drivers/staging/most/usb/most_usb.ko
> > rename to drivers/staging/most/usb/most-usb.ko
> 
> You renamed a binary file??? That is not in the source tree?
>   

I know. And I was kind of confused that you chose this path (1).
I even had to mess up my git to do that. 

> 
> No, I mean make the patch move the .c file from staging to the
> drivers/most directory and adjust the Kconfig/Makefiles for that
> movement.
> 

Huh, but this is exactly what I wanted to do in the first place.
Add it to the stable branch and change the staging files to
avoid the conflict.
But then you told me to not touch the staging files. Remember?

Anyways, here is what I am going to do now:
add the usb file to the stable branch, change the name of the
.ko inside the stable branch and then once the staging files
are removed, I'll rename it again to get the old name back.

Does this make sense now?

thanks,
Chris


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
