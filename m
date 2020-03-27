Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC241956C4
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 13:08:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AFD598764D;
	Fri, 27 Mar 2020 12:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wdiOttnOYe5T; Fri, 27 Mar 2020 12:08:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A98B587643;
	Fri, 27 Mar 2020 12:08:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F76B1BF5EA
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 12:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0BC6D87643
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 12:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vK8fwHpq_tsD for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 12:07:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4A3F887642
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 12:07:57 +0000 (UTC)
IronPort-SDR: d5TM3En95bxZeDD/XCW+4LMUcCvIfFjJ/jh+jHZzKsv6Y5Jkn1tcTbbCEiTPt3O8u82Rl3w2uC
 Fx2HZsbKMa9FAmhwQ6kBRkAopqvI2qLu9xs8z1Z+hfRYOcvKpFweV4BValcQBlyYo0MReUtgrp
 FD6DgIUnom2uAWbgKq01TDBcawmyoFIkZ5dS48/q7UuEUugzrDp6n4J7iLhyrXWwho3jBGt/gt
 xN2H5Rahsah/KcE/XF1JIFPwOHwHzFBglaMRF96o+2dDVV6jH2x+gUqoIZUcCa2i+G90clbfUm
 Idc=
X-IronPort-AV: E=Sophos;i="5.72,312,1580799600"; d="scan'208";a="73746130"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Mar 2020 05:07:56 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Mar 2020 05:07:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 27 Mar 2020 05:07:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M14/puVmX65ES3RSKGQ8arFqyUAmsEIbq5L74RqDTIFh04Ig+pbky3z+DTgdIy1NxSj3PoRvuZ1DOdUWnqOG/F5o3WXVZVRXZ/XXesqDSF7FOgEXMZxsP7aZrBI7En+957bpUKqqVfF79w7ermp+oCBDfEBbdSKv1+3VomorgGFN0sqTdO2+U5kci+OHhV1/aoEwioeZxqP1ojVTB/hyMZNBc66zXYvYkf5rarIi7wtQGWJMbw7cm0PjuPwaILR4LrBxQSjliICEW4ym+lfgubjzaJAqhNUQiIujRpZsNwWRB9WlXvkxUi5OXuSDHZuZES3BYxUMgmymdI7CMjDU+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftr3BOp1RQ5aAzQd3c1l6l6UQv/25lYrJWUSJcp5fvc=;
 b=eaphNjjWqn0eOd1YBBOQxdo54/0MIS5HdOsbcaPzkBKKoMUhRFoH3hcAbvrisnuw4yWQJBlemYIBv39ueF03hsyUL3tklsM9D6tDVwOF4p4yGpUv0+0Z0SwHZigO60OVPxZZ1YgR02j7zYakDcVf5+pde+M1LaoMDWqQYlYPPUF47VPSEgmrNDeYqgpQQJKO8vhA/DZYzUR4lE3J0/wflA4otsfV6ZKnNB6G6eidbKbF7021z8LpuPgqdBC+jLYGyTMI5WDXJW4Tm1J/qHDSwaN3bqCoeyEToYEhc3Rm3MV179LhzXm2qRAN7MBktYsQGIfNmjX5+dV4bXUWIIYpaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftr3BOp1RQ5aAzQd3c1l6l6UQv/25lYrJWUSJcp5fvc=;
 b=IvJNgdxPdXuNMEr7mmn/zu78bkqt9IYRQZfQH9q7PjDdghksdbceGa0t7w2l4vmaSq/ckTbntyw3JyjAIUJazaQZfraa2mJMQNWq0tbWc9XfzZSMOkJ55CS9Bcst2ddqkfkGmpai6vq82+rr4rMkDGqxWmAzDYQOd4Ig3KSrs1U=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB3109.namprd11.prod.outlook.com (2603:10b6:a03:8c::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19; Fri, 27 Mar
 2020 12:07:54 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2835.021; Fri, 27 Mar 2020
 12:07:54 +0000
From: <Ajay.Kathat@microchip.com>
To: <kvalo@codeaurora.org>
Subject: Re: [PATCH v6 00/17] wilc1000: move out of staging
Thread-Topic: [PATCH v6 00/17] wilc1000: move out of staging
Thread-Index: AQHWBAGTqEr82liQgUqCj/rX8Gwo4KhcSlDCgAAOWwA=
Date: Fri, 27 Mar 2020 12:07:54 +0000
Message-ID: <438b865a-842a-f7d6-f57e-f7b1614ff17d@microchip.com>
References: <20200327063302.20511-1-ajay.kathat@microchip.com>
 <87ftduoxou.fsf@tynnyri.adurom.net>
In-Reply-To: <87ftduoxou.fsf@tynnyri.adurom.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ajay.Kathat@microchip.com; 
x-originating-ip: [183.82.22.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 11adb2af-c222-4500-0fc2-08d7d2477b22
x-ms-traffictypediagnostic: BYAPR11MB3109:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB31096704B5C43727BAF68765E3CC0@BYAPR11MB3109.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(136003)(366004)(81156014)(8936002)(36756003)(31686004)(71200400001)(478600001)(6486002)(6512007)(6506007)(53546011)(6916009)(966005)(91956017)(54906003)(26005)(31696002)(86362001)(8676002)(81166006)(186003)(2906002)(2616005)(66446008)(107886003)(5660300002)(76116006)(64756008)(4326008)(66556008)(66946007)(316002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3109;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xjb7s1Z0pMzPpI33qsEcNS/9VXyszGgBfrLpDzLSfY0qWXiXXoOJBJxnsvIJP0jVzBLuqa/9/faidCU1U9D02e3WnFlUTQxLrcC4MbGNiqW/siwgsolFzUxyzC7QSNh2wkCH8h1+MmK5jfUhPKG1F4EJ5ifc6dOv5szIczQSJvNnhrKHkXuBAqImdycRtJ71rWw4LiCSUCZpd8ul+3gqbMPAevTSdMjMk4C8pmvrwoFqlgEb0qObU+aAL3q2JxUbqhqIPq94U6EJe6L0IHL6qCzyBWZrceATvkiAzyUweAPLxCOvuA6VPq58rWkDIVvTsVsttEDiumMjCF2ql+k9vyCXz6MG5mcJ8ftP/Xp1+4l8jfn87rtyvjgh9QRJ0o1vOvX+P9TMyoH2C/IOoPVACkqto5gwViutlzxaZo4fYBJuZRRdIrKeejc4FNp2v6fHs6QXKrQJLAinC6Q2GjMKygGgx31c1pYBr8WXQ5L+Vbd5Ob1+XvU+SwARamOeQh92puGCj+pI+NpQ1OaHfkDg5Q==
x-ms-exchange-antispam-messagedata: wET2jUVMtlneu16kgNDtzMlaKB+9X5EhpxvmsrZ9BWP8hpyQonnXIUBqD8b2aNR0dK4Nwk+AZzVEKHB3HHNbWnNy3O3h8RcqqSlJXC52KHNsC7jGSbeJq8VXUyPCdFKuRsOC2qHAR8QiL3O5a3QE2g==
Content-ID: <63DEC88A8E17344D9A0E2C97E8993154@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 11adb2af-c222-4500-0fc2-08d7d2477b22
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 12:07:54.4496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b35kcZVG7kVwNkd5k+yHwi/J8uBeJbsyT52AnVv68ehE4AVxyK/jsvJOZ2/WYrDXoVKUzTr4OnvBed5+eDmmXtIloubkOQT38Rruve7tBHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3109
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Venkateswara.Kaja@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Kalle,

On 27/03/20 4:46 pm, Kalle Valo wrote:
> 
> <Ajay.Kathat@microchip.com> writes:
> 
>> From: Ajay Singh <ajay.kathat@microchip.com>
>>
>> This patch series is to review and move wilc1000 driver out of staging.
>> Most of the review comments received in [1] & [2] are addressed in the
>> latest code. Please review and provide your inputs.
>>
>> [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
>> [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
>>
>> Changes since v5:
>>  - handle DT binding review comments suggested in below link:
>>   * https://lore.kernel.org/driverdev-devel/20200320175920.GA31641@bogus
>>  - merged latest driver from staging which contains few cleanup patches
>>    and changes to use crc7 from existing library instead of having
>>    private implementation.
> 
> This is already the third version this month, please avoid spamming the
> list unnecessarily. What you can do to speed up the acceptance is to get
> Reviewed-by tags from people, the more I see those the more confident I
> get about the driver. I will also review this again once I find some
> free time, but don't know when that will happen.
> 

Apology for sending the patch series multiple times. This series also
contains the DT binding documentation patch. We have received couple of
review comments for the file. In the latest series all those comments
are taken care and hope it cover all points. I wanted to atleast close
this and get Reviewed-by tag for the file.
Any suggestion on how to get only single file reviewed out of this
series in case further comments are received.

> But it would be good to document in the cover letter what commit id are
> you using as the baseline. That way it's easy to review rest of the
> changes Greg has applied separately and you don't need to resend the
> whole driver everytime.
> 

Sure, will capture the commit id details in the series cover letter.

Regards
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
