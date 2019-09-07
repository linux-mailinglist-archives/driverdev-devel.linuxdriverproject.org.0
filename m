Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34940AC775
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Sep 2019 18:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 30DE52036C;
	Sat,  7 Sep 2019 16:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8u67I85fUzEk; Sat,  7 Sep 2019 16:02:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6B32920367;
	Sat,  7 Sep 2019 16:02:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CFBC1BF314
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 16:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6630485F61
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 16:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MgXV8lYZTqH8 for <devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 16:01:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic316-20.consmr.mail.ne1.yahoo.com
 (sonic316-20.consmr.mail.ne1.yahoo.com [66.163.187.146])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EDE2685F56
 for <devel@driverdev.osuosl.org>; Sat,  7 Sep 2019 16:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1567872102; bh=+IZQ+uCtgq8SINvcDc8Cta7N3RNAzYRsiVq5+DAsjhY=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=oucHeTriI5SvVfy4EhQUu3hVIk1MRtmHh1yjJlYtVqCUH6l7mYbjti8bmozR9z3nBBlnKM6KiCe7jjd8MrYfjvrjzhcw3Z0+y+6z2rbbpNRxEJhrio+CBNlh/K66NQPjLZ6Spu+wfdpkfJzWRMxRMEfxwSL9I1vrH7c5qlNR30CpLcDksASFLKL12puIz5wkmVG0fDg3mGpc5tRXDiPZb6inK65FwtoHRPJOEFMYFKYCHKBk/XzM9PrXNZcF1Rjg4D+ROJk05tqFrw49akYnTDC/fJN+JO5AEnqULMszHTTwwEOgd4b6L7WBpGbtTVeltairFH86A7XNOJ6KxEIaSA==
X-YMail-OSG: zHX9qEgVM1m.R6caY4HIWFo7j5xTAHd3o36z.Uav6lBOQYgb0e.p3aZPhI6M4xG
 J8cP4p4Wieqp16nUcw8bxIm6YVlNBSyhd_BlRmuqaMk5cTmQkSoXM6YBdr_cH3xXvuzhPJJjhNkn
 QAdjm6UDR1nlMxlKPPITYjq04T3dwIwPlNmu8yNN7GWGCUAj9X6rZfb7VJ7io4useL.X2mmtItmY
 1JnEb3tXB.9kdPw6HxnektGlZN2OCuCNK1SzznR6GPZZwhpdyhJv2gQB8zmAkclKIcXuTcioCcid
 TEul_4vT4RrP0apOPIsp2iRXCVlnT6fA3d6UFJuHpiCE0bHxccJ0MlSMcxDB84mQOvfp6GJv.TEn
 4hsdZ9.psn..MVQRjxeSmgNcH23F2WogjQ2dXsK4OANC8D56jVzRWVXCQrAbPmI9v9VzzDT84p8S
 GE_8b0fxyJ1pvO33UtzH7iEImytW8TQ5megCUO0UMwMgtCIEG28uL2BEwbxn_y4ZgUepCGFWoytY
 N3p79L2GAXbEaD2iuI6HQAPF0mGdSAHRwo7b9iWZ_Vk3megmjXIPu3Xh7vT73YB.aqGjsoZ3gS3r
 dDvX07q9kuHDgR6us7p2JwBvly7zi9duCluzBESd9nMkavlUv8JeW3aPY5MZ3vI.yplh_JFQzTth
 SZ4fwLjUcD4.dp2kuQInQ2HlDFZynvlmhn8fhDZVlNY9uVq_TJpgWLzCcfMJjWjCHFt86z0xCDZ6
 icwahY3XZgU7xWffjNZU6wOGjyZfiChS8TYObhblb9cEqC_UZSfiTdy6pMioqqpkIZuc1QpjB7lB
 3mee6jjdioxyFLSTnPdYkWX82QZSTW2abj5kPG2KCAwoUn7G1KYt7lUIGp040evEW6.E8lBTErxq
 GNwenS1LdIaXCsdlER68q02ySYMf8PYldYXIaiyfI8rgdYZQTbfD9I2vHwrgKZHGCEDvWUpNDszJ
 1FSBLsljsoKOe9d1ag17kWW0ljQAbK8n8de9nVzltMaiiD_gxUa3Z3s8OJzMnFVYN.KaoD1Itb8a
 E.a6ue8Fb0SDZrzkH2PhnE97oBFzzZdlejYhNOcYTDk7TrPD_efYoj6ksMchB_FQVdM0hWFHlRSC
 S2Wj0sQVO.wN7Caie5EXOULNT4tBPkw4MpcZJSXL3XyELdYr44jUJORqfyLRwkEQGW9mNgbE8ohZ
 CdbdNjj6cJyvvV2SKX8grPvFzHS3kCeg7BMzJKACSXKrNPEMZMB31FaVZISNvRy9gV454.cnpfQg
 kIuVhDTPb0By2_rSpMPkWo6Rz8BiWvGseoD0JtcH5UkaM
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.ne1.yahoo.com with HTTP; Sat, 7 Sep 2019 16:01:42 +0000
Date: Sat, 7 Sep 2019 16:01:42 +0000 (UTC)
From: "Mr.Juan Norman" <jaunnorman744@yahoo.com>
Message-ID: <2120243765.3743116.1567872102502@mail.yahoo.com>
Subject: HELLO
MIME-Version: 1.0
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
Reply-To: robortopears@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Hello

This is to bring to your notice that we have forwarded the remittance instructions details to Mr. Roberto Pears with an instructions to direct you to open the on-line account and also process the remittance of your long outstanding fund via the assigned paying Bank.

Now, I want you to contact Mr. Roberto Pears via email below notifying him that i directed you to contact him as regards to your claim.

CONTACT Person: Mr. Roberto Pears

UNITED NATIONS PAYMENT CONSULTANT

Email: robortopears@aol.com


Sir,don't hesitate to notify me as soon as you contact Mr. Roberto Pears as instructed above.

Await your prompt response ,

Best regards.

Mr.Juan Norman
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
