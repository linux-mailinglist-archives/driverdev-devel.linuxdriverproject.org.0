Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB7F807493
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Dec 2023 17:12:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E953482AEF;
	Wed,  6 Dec 2023 16:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E953482AEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9efxoTTKLyaX; Wed,  6 Dec 2023 16:12:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3ACF821C8;
	Wed,  6 Dec 2023 16:12:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3ACF821C8
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59F641BF82F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  6 Dec 2023 16:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 31BE740296
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  6 Dec 2023 16:12:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31BE740296
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lF6f_Sx-T2Z8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  6 Dec 2023 16:12:12 +0000 (UTC)
Received: from lhr.gtn-esa2.in (gtnesa2.ptcl.net [59.103.87.20])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1FF67400B9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  6 Dec 2023 16:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FF67400B9
Message-Id: <573856$1hgp40@lhr.gtn-esa2.in>
X-IPAS-Result: =?us-ascii?q?A2E5DAAlnHBl/0+gtbZaHQEBAQEJARIBBQUBQAmBRgKFD?=
 =?us-ascii?q?4RTlAeVFoZHE4FqDwEBAQEBAQEBAU0EAQGFBoctJzoEDQECBAEBAQEDAgMBA?=
 =?us-ascii?q?QEBAQEDAQEBBQEBAQEBAQYDAQICgRmFL0aGTSdWKA0CJgJJFhOFX65dgTIaZ?=
 =?us-ascii?q?4RfsU4uAYJuhR8BgVCECJAQARIBg3wVglMEiRcHMoVKKYk4hnoHAgVwR3AbA?=
 =?us-ascii?q?wcDfw8rBwQtIgYJFC0jBlEEKCEJExI+BGuCRAqBAj8PDhGCPWE2GUiCWxUMN?=
 =?us-ascii?q?Ep1EEIXgRFuGxMeNxESFw0DCHQdAjI8AwUDBDMKEg0LIQVWA0UGSQsDAhoFA?=
 =?us-ascii?q?wMEgTMFDR4CECwnAwMSSQIQFAM7AwMGAwsxAzCBGQxPA2sfNgk8DwwfAjkNJ?=
 =?us-ascii?q?yMCLFYFEgIWAyQaNhEJCygDLwY7AhMMBgYJXiYWCQQnAwgEA2MDMxEdNwkDe?=
 =?us-ascii?q?D01CAwbRAhHHRKjMngBgUdEgRAhhUKNdoNoih6DTqBOB44Sm0cBk14DkjZHh?=
 =?us-ascii?q?ziEaotZIKo1DX9whCdSGaItaTsCBwsBAQMJimIBAQ?=
IronPort-Data: A9a23:OVh0/alq0SbAQmpwfAt4/rPo5gxJJkRdPkR7XQ2eYbSJt1+Wr1Gzt
 xIfUW+HO6uKa2Wjfo9+PI3g8khQ7cWHyNA3TQdtqnsxQS4T+ZvOCP2ndUqhZCn6wu8v7a5EA
 2fyTvGacajYm1eF/k/F3oDJ9CU6jefSLlbFILas1hpZHGeIcw9/z0o/8wIFqtQw24PgWVvT4
 YmaT/D3YTdJ5RYlagr41Ire8HuDjNyq0N/PlgVjDRzjlAa2e0g9VPrzF4noR5fLatA88tqBe
 gr25OrRElU1XfsaIojNfr7TKiXmS1NJVOSEoiI+t6OK2nCuqsGuu0qS2TV1hUp/0l20c95NJ
 Npl5bycFlwKIq32p74aThlFHR4gE5ZI9+qSSZS/mZT7I0zuT0Cq2/xoSVk/NowW++0xCmZLs
 +AHQNwPRknT3aTvkOv9E7c0wJtyRCXoFNp3VnVI5CvYA7AFQZnFa73W7tse2joswNhNdRrbT
 5dAOGE3NkiYC/FJEn0GC4xngsqmvz7YeBtogVe8r4xuoEGGmWSd15CoarI5YOeiT8FSkW6Vr
 X3H8yLyBRRyHN2T0yuC93WyruDKlCL/HokVEdWQ/fNygBify3IeDDUIWlah5/q0kEizX5RYM
 UN80jYnqacz3EmmSt30WRqo5nWDu3Y0XtNbCeoS7ACL17qR5geBHS4DVDEpQMQivdM4QiYvk
 1OTns3kH3l/4OO9V32Q7PGXoCm0NCxTKnUNDQccQBEI8/H7rZs+nlTEXL5LG6q4i9DzAhn0y
 jyLtyM+wbke5eYH0KO05lDKhT3qt5HPQSY47x7GRX6s5QA/b4jNT4eo81nA8fdJKsCWVF6Eu
 VABmsOE6+sODInLnyuIKM0SB7iB+/aIdTHGjFdqBN8t+lyF92SiY41K7DxgYUtkLMsAUTvoZ
 lLDtRlQ+pJJJGGtb6J8f8S2EctC5azhE8n1E+3PZPJQbZVrMgyK5idjYQiXxW+FuEM3uaUyM
 JuWa8GqADARD8xP1z2yWvsc1rkw7jgkxHjPRJb2iR+g1PyCexa9Ur4BPUDXNsgy/KeVrBeT+
 NFaX+OI1hFeXcX9eTXS8IUJKhYMIGRTLYD3ospYdueFLQ57H0k6CvnYh7gmfuRNnqJbkc/B5
 G2wQUNVzFH2n3zNJEOBbXULVV/0dc8v9zRibXVqZAjwnSdyCWqy0Joim1IMVeFP3IReITRcF
 ZHpp+3o7j9zpvgrNtjTgVQRbGCvSfhzuT+zAg==
IronPort-HdrOrdr: A9a23:9PvtRKj/FJ75GpBWvvhExM9C6nBQXsoji2hC6mlwRA09TyVXra
 CTdD1y73PJYVEqNU3I+OrqBEDuewK+yXcY2+gs1NSZNjUO0VHARL2Ki7GSoQEIcBeQygcy78
 ldT5Q=
X-Talos-CUID: =?us-ascii?q?9a23=3AncoF9GjYkArHoEoGOL30RmgM3zJuIl3xkyzzP0+?=
 =?us-ascii?q?CNjxuVb2IR2DO1phqnJ87?=
X-Talos-MUID: 9a23:I/7/ewUqU8fzM3Pq/BX9hy87Kupm2uOJA2Y9uJAvse/ddgUlbg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.04,255,1695668400"; d="scan'208";a="51930240"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO TS.pan-pacific.com.tw) ([182.181.160.79])
 by lhr.gtn-esa2.in with ESMTP; 06 Dec 2023 21:11:52 +0500
MIME-Version: 1.0
Content-Description: Mail message body
Subject: #Congrat!!
To: "t.maruyama@n-mtec.co.jp" <Arif.Khan@ptcl.net.pk>
From: <Arif.Khan@ptcl.net.pk>
Date: Thu, 07 Dec 2023 00:11:36 +0800
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
Reply-To: grantsprogram@cpn.it
Cc: asghar.meo@ptcl.net.pk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Congrat!!

Ref No: BEH/XGM/012/0023.

Your email address was chosen at random during an internet search to receive USD 805,000.00 from me, the chairman and CEO of Berkshire Hathaway. If you are interested respond promptly via this e-mail:{grantsprogram@cpn.it} to learn more about the donation and how to claim it.

Regards,
Warren Edward Buffett
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
