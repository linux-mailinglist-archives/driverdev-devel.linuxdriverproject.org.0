Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2322554568
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jun 2022 12:53:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEA5684487;
	Wed, 22 Jun 2022 10:53:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEA5684487
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hb1btencsgKZ; Wed, 22 Jun 2022 10:53:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CE6783EF0;
	Wed, 22 Jun 2022 10:53:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CE6783EF0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3C151BF335
 for <devel@linuxdriverproject.org>; Wed, 22 Jun 2022 10:53:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E59061290
 for <devel@linuxdriverproject.org>; Wed, 22 Jun 2022 10:53:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E59061290
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EXnR8Uw5v_ei for <devel@linuxdriverproject.org>;
 Wed, 22 Jun 2022 10:53:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 108A461060
Received: from mail.jywrepuestos.com (mail.jywrepuestos.com [190.119.242.179])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 108A461060
 for <devel@driverdev.osuosl.org>; Wed, 22 Jun 2022 10:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.jywrepuestos.com (Postfix) with ESMTP id DC94AAE87FE;
 Wed, 22 Jun 2022 04:05:25 -0500 (-05)
Received: from mail.jywrepuestos.com ([127.0.0.1])
 by localhost (mail.jywrepuestos.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id edv4Zp0Z9gj0; Wed, 22 Jun 2022 04:05:25 -0500 (-05)
Received: from localhost (localhost [127.0.0.1])
 by mail.jywrepuestos.com (Postfix) with ESMTP id 6E700AE87FB;
 Wed, 22 Jun 2022 04:05:25 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.jywrepuestos.com 6E700AE87FB
X-Virus-Scanned: amavisd-new at jywrepuestos.com
Received: from mail.jywrepuestos.com ([127.0.0.1])
 by localhost (mail.jywrepuestos.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Y6wUGVfDl9q5; Wed, 22 Jun 2022 04:05:25 -0500 (-05)
Received: from me.ypg1heifj2seznfpzbiijbkjxg.syx.internal.cloudapp.net
 (unknown [40.82.145.100])
 by mail.jywrepuestos.com (Postfix) with ESMTPSA id 1E072AE8085;
 Wed, 22 Jun 2022 04:05:19 -0500 (-05)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello
To: Recipients <wilson@jywrepuestos.com>
From: wilson@jywrepuestos.com
Date: Wed, 22 Jun 2022 09:36:23 +0000
Message-Id: <20220622090520.1E072AE8085@mail.jywrepuestos.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jywrepuestos.com; 
 s=F71C435A-5232-11EB-AA07-242A54BEB359; t=1655888725;
 bh=DD5l+yT8X8B+rnfIgkXZoWMG/OQI2xykM3zWcjCt0r4=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=ADY6pcy/Jtvut3KlzNpeq/FupiHqBSdEWtE9xLGBlze4ns16DZK0GnVm8vw8Yd/2i
 +pafwdMX1CY0SqTqjJRb/JXYJDeJA/kopI62v5cdmRPt6+08n6gPsVqcny47/Hm+X1
 thSBGQk4yNtBeEeXmRkFsxBODazaSghtpk0Zvlszi15XSb1Sr64BApdYeL7GHDf9x4
 CEOAxkSpJrilnq3MYL3CTgvUuFaPdTx6mqgwfi/VmCm8nMI5Ya/IGCDvykO21zjt7z
 29o663UnyQT0s2ghWkYOeYXze9lgnSrVZ2tvApLWTmIWhkQnPLYbGrmkQfld4b6ebh
 eNDsgpP5iNM1w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=jywrepuestos.com header.i=@jywrepuestos.com
 header.a=rsa-sha256 header.s=F71C435A-5232-11EB-AA07-242A54BEB359
 header.b=ADY6pcy/
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
Reply-To: reemalhashimy309@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My name is Reem Hashimy, the Emirates Minister of State and Managing Director of the United Arab Emirates (Dubai) World Expo 2020 Committee which was just concluded on 31 March 2022.

I am writing to you to manage the funds I received as financial gratification from various foreign companies I assisted that participated in the event. But I can not personally manage the fund in my country because of the sensitive nature of my office and certain restriction around as a married Muslim lady.

For this reason, the  various foreign financial gratifications were directed to  a financial institution where it will be possible for me to instruct the transfer of the fund to a third party for investment purposes. This is the reason I am contacting you to receive the fund and manage it as my investment partner. 

On your indication of interest with your information; I will instruct the financial institution to process the fund to your country for investment purposes.

Regards.
Reem Hashimy.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
