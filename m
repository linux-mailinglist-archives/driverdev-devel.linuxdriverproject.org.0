Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BEE87748E
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Mar 2024 00:57:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 701DE4017A;
	Sat,  9 Mar 2024 23:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKLB2rX4Rgrf; Sat,  9 Mar 2024 23:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EF6E40188
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6EF6E40188;
	Sat,  9 Mar 2024 23:57:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 675511BF2A2
 for <devel@linuxdriverproject.org>; Sat,  9 Mar 2024 23:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6080460A3D
 for <devel@linuxdriverproject.org>; Sat,  9 Mar 2024 23:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wLSTqqQ58UXt for <devel@linuxdriverproject.org>;
 Sat,  9 Mar 2024 23:57:07 +0000 (UTC)
Received: from kernelhost.info (unknown [91.218.67.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FE23608D7
 for <devel@driverdev.osuosl.org>; Sat,  9 Mar 2024 23:57:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7FE23608D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FE23608D7
Received: from [127.0.0.1] (dynamic-176-001-007-044.176.1.pool.telefonica.de
 [176.1.7.44]) by kernelhost.info (Postfix) with ESMTPA id 02D15159DAF
 for <devel@driverdev.osuosl.org>; Sat,  2 Mar 2024 16:39:43 +0100 (CET)
Received-SPF: pass (kernelhost.info: connection is authenticated)
Message-Id: <yt36UBAHbC2Ss4J5WgCVAXQzmybFh573MFowLtv3Lg3L@imf.org>
Mime-Version: 1.0
From: Mrs. Patricia Mcniel <public@imf.org>
To: "devel" <devel@driverdev.osuosl.org>
Subject: Very Urgent
Date: Sat, 2 Mar 2024 16:39:45 +0100
X-Bounce-Tracking-Info: <ZGV2ZWwJCQlkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZwlWZXJ5IFVyZ2VudAkyMwkJNTYzOTExCWJvdW5jZQlubwlubw==>
X-PPP-Message-ID: <170939398554.8780.8282744209646617513@kernelhost.info>
X-PPP-Vhost: imf.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=imf.org; s=default; 
 t=1709393985; bh=GMwkPfl8GtaVwnuNAYiwfN9l9xM9+sgKU7IzB05mBgo=;
 h=From:To:Subject;
 b=BwC2tjGcR5egkhWhfYyP9RQnsVNr4vUXCPJQmuVB22k3RsxnRx8jc+980C0fQbaAw
 iJXc+OeXK5/a549C6iGfW8GMIcB0ER+zgrlhhz9JZylrVnn9xwHoA0pgGpffAmF5Ld
 vq9FgNbK0gESxGS8BJCfHX52LN0VW8EJz8zQF4WBvOL+l7vxCWWJdbwiQtNcOjBBw7
 pj6h7XlcNtKLpNKRYUqrMCCKgVePrATf0NvgpbqsxsvO+zBA9SLebNuFE9LWFG9Lss
 cA7Xp/sGnO96eZFj258bJvDp9b+SnOkP/ck7rZzpJIBay8ZYLId52Z8/d3315BpnOW
 UogY7R7K40ryQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=imf.org
X-Mailman-Original-Authentication-Results: kernelhost.info;
 spf=pass (sender IP is 176.1.7.44) smtp.mailfrom=public@imf.org
 smtp.helo=[127.0.0.1]
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
Reply-To: patricia881a@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Headquarters:
International Monetary Fund
700 19th Street, N.W.


With reference to your entitlement fund and inline with the CHANGE OF BENEFICIARY'S APPLICATION, signed by Mr Calvin R. Hemming with your purported authorization. This issue has been carefully examined and we have declined Calvin R. Hemming's application as the application lacks regular signature. But Did you ever instruct Mr Calvin R. Hemming to claim your fund worth US$9.500.000? Below is the bank account information provided by Mr Calvin R. Hemming saying that you authorized him to claim your fund that you are terminally ill.

Bank Name: Bank of America
Account Name:: Calvin R. Hemming
ACCT NO: 586025513245
Routing No: 111000025
Bank Address 9711 Bissonnet St. Houston, Tx 77036

If you had not authorized the change of your bank account in respect to your outstanding entitlement Payment, therefore notify me immediately as the notification / declaration was supported with a sworn affidavit from Texas high court ref: ilk /jj/202/k2024, dated 29th of February 2024 and signed by Mr Calvin R. Hemming who claimed and stated in the sworn declaration that you authorized him to claim the said fund on your behalf to a different bank account in the U.S. as stated above because you were terminally ill and the Doctor who is in charge of your case stated that you will not stay more than one Month before passing away.

If you did not authorize this payment, we will suspend all your pending transfers and arrange your payment through our swift card payment center after verification. In receipt of this confidential email, you are required to get back to us immediately to proceed with the funds release or stop with the release to your representatives and claim your funds personally.

You are directed to contact the Office of the Paymaster General immediately through his below Contact details to start processing your file.

Dr. Michael Smith
Email Address:  claim.department@mail2Usa.com

This development has caused lots of discrepancies in your payment file that is why we had to suspend your payment and prompted you to contact you directly before re-validating your payment. You can be rest assured that we will do everything within my capacity to successfully actualize the quick transfer of your fund to any of your nominated bank accounts.

Kindly contact Dr. Michael Smith as soon as possible so that he will direct you on what to do for the claims.

Best Regards.
Mrs. Patricia Mcniel.
Email: pmcniel947@gmail.com
Public Information Officer

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
