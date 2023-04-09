Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D57F6DC0FB
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Apr 2023 20:20:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C554241606;
	Sun,  9 Apr 2023 18:20:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C554241606
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ivbrX8PMVuz; Sun,  9 Apr 2023 18:20:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60DF441605;
	Sun,  9 Apr 2023 18:20:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60DF441605
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 081E41BF40F
 for <devel@linuxdriverproject.org>; Sun,  9 Apr 2023 18:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D52E881D5F
 for <devel@linuxdriverproject.org>; Sun,  9 Apr 2023 18:20:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D52E881D5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCl4sBN2E3Wt for <devel@linuxdriverproject.org>;
 Sun,  9 Apr 2023 18:20:39 +0000 (UTC)
X-Greylist: delayed 00:13:46 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4B8581D47
Received: from omail.cmu.edu.tw (mail.cmu.edu.tw [140.128.66.114])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4B8581D47
 for <devel@linuxdriverproject.org>; Sun,  9 Apr 2023 18:20:38 +0000 (UTC)
Received: from fjchen?mail.cmu.edu.tw (unknown [103.224.240.224])
 by omail.cmu.edu.tw (Postfix) with ESMTPA id 86C34271A5B;
 Mon, 10 Apr 2023 01:57:33 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 omail.cmu.edu.tw 86C34271A5B
From: "Give-Away"<fjchen@mail.cmu.edu.tw>
Subject: BTC Alert.
Date: Sun, 9 Apr 2023 23:27:34 +0530
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20230409182039.D52E881D5F@smtp1.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mail.cmu.edu.tw; s=default; t=1681063060;
 bh=Unkm8KO7N21edlUBbtgBKT3jGUHjjrEBrYNmsBE6uZ0=;
 h=Reply-To:From:Subject:Date:From;
 b=iV3IvbcC1RvLoqBT7yrazeoEhCFrWWZ9fJ+3W4PARt8d9e/W3Xp3zoor08Gq1GA2h
 e5C1cY21/EcrkMMMQM7H807bV9LXoWM7XSiuJBFCk4nvsOlzc/SrVWsSe9D8hAnpqc
 iGKqtjtlpZ+MCzMg9uawBJ9mt86ngSVOO+UqZYPs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=mail.cmu.edu.tw header.i=@mail.cmu.edu.tw
 header.a=rsa-sha256 header.s=default header.b=iV3IvbcC
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
Reply-To: freegiveaway1809@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Your Bitcoin wallet has been Credited with 51.85 BTC making a total sum of $1,234,047.63 USD. Kindly login with below details to confirm your BTC balance.

Website:WWW.ORCHIDCOIN.NET

Customer ID:51130431
Password:p7peach22
BTC Balance:$1,234,047.63 USD

Ensure to confirm your balance ASAP.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
