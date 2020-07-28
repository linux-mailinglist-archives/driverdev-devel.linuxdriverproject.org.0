Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51CA231573
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 00:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D11B5884DB;
	Tue, 28 Jul 2020 22:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mtwx-OnCZYCH; Tue, 28 Jul 2020 22:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F3CA8817D;
	Tue, 28 Jul 2020 22:17:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CEED41BF5AA
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 22:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C708388398
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 22:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Improper folded header field made up
 entirely of whitespace (char 20 hex): X-SA-Report: ...T_ADDRESS@@ for
 details.\n \n Content previ[...]
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jk2Tv9XJK8aD for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 22:17:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dec.fca.unam.mx (dec.fca.unam.mx [132.248.164.63])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8D00F8817D
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 22:17:55 +0000 (UTC)
Received: from [20.194.2.11] (helo=User)
 by dec.fca.unam.mx with esmtpa (Exim 4.92)
 (envelope-from <lgraves@uniserve.com>)
 id 1k0XtT-0008DL-KY; Tue, 28 Jul 2020 17:16:20 -0500
From: "R. E. Al-Hashimi"<lgraves@uniserve.com>
Subject: Information...
Date: Tue, 28 Jul 2020 22:16:19 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <E1k0XtT-0008DL-KY@dec.fca.unam.mx>
X-SA-Score: 14.5
X-SA-Report: Spam detection software,
 running on the system "dec.dec.fca.unam.mx", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details. 
 Content preview:  My name is Reem E. Al-Hashimi, the Emirates Minister of State
 and Managing Director of the United Arab Emirates (Dubai) World Expo 2020
 Committee. I am writing to you to stand as my partner to receive [...]  
 Content analysis details:   (14.5 points, 5.0 required) 
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 FSL_CTYPE_WIN1251      Content-Type only seen in 419 spam
 0.0 NSL_RCVD_HELO_USER     Received from HELO User
 1.2 MISSING_HEADERS        Missing To: header
 0.0 AXB_XMAILER_MIMEOLE_OL_024C2 Yet another X header trait
 0.0 FROM_MISSP_MSFT        From misspaced + supposed Microsoft tool
 3.4 MSOE_MID_WRONG_CASE    No description available.
 0.0 FROM_MISSP_XPRIO       Misspaced FROM + X-Priority
 1.9 REPLYTO_WITHOUT_TO_CC  No description available.
 0.0 FSL_NEW_HELO_USER      Spam's using Helo and User
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 MONEY_FROM_MISSP       Lots of money and misspaced From
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 TO_NO_BRKTS_FROM_MSSP  Multiple header formatting problems
 2.8 FORGED_MUA_OUTLOOK     Forged mail pretending to be from MS Outlook
 0.0 FROM_MISSP_EH_MATCH    From misspaced, matches envelope
 0.0 FROM_MISSP_FREEMAIL    From misspaced + freemail provider
 2.7 ADVANCE_FEE_3_NEW_MONEY Advance Fee fraud and lots of money
X-SA-Status: Yes
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
Reply-To: reemalhashimi@daum.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My name is Reem E. Al-Hashimi, the Emirates Minister of State and Managing Director of the United Arab Emirates (Dubai) World Expo 2020 Committee. I am writing to you to stand as my partner to receive my share of gratification from foreign companies whom I helped during the bidding exercise towards the Dubai World Expo 2020 Committee and also i want to use this funds to assist Coronavirus Symptoms and Causes.

Am a single Arab women and serving as a minister, there is a limit to my personal income and investment level and  For this reason, I cannot receive such a huge sum back to my country or my personal account, so an agreement was reached with the foreign companies to direct the gratifications to an open beneficiary account with a financial institution where it will be possible for me to instruct further transfer of the fund to a third party account for investment purpose which is the reason i contacted you to receive the fund as my partner for investment in your country.

The amount is valued at Euro 47,745,533.00 with a financial institution waiting my instruction for further transfer to a destination account as soon as I have your information indicating interest to receive and invest the fund, I will compensate you with 30% of the total amount and you will also get benefit from the investment.

If you can handle the fund in a good investment. reply on this email only: alreemhas109@daum.net     

Regards,
Ms. Reem
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
