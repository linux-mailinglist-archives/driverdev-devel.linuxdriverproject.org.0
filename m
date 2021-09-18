Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DB441086D
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Sep 2021 21:48:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42661606C6;
	Sat, 18 Sep 2021 19:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TcyTSXQ0iThH; Sat, 18 Sep 2021 19:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF391605F5;
	Sat, 18 Sep 2021 19:48:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F29F1BF40A
 for <devel@linuxdriverproject.org>; Sat, 18 Sep 2021 19:48:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C3C560643
 for <devel@linuxdriverproject.org>; Sat, 18 Sep 2021 19:48:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gecM6SgppBXF for <devel@linuxdriverproject.org>;
 Sat, 18 Sep 2021 19:48:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail3.psa.gov.ph (mail3.psa.gov.ph [202.78.94.76])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8702B605F5
 for <devel@driverdev.osuosl.org>; Sat, 18 Sep 2021 19:48:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.psa.gov.ph 3EC0D606DE5B
DMARC-Filter: OpenDMARC Filter v1.3.2 mail3.psa.gov.ph 1251A1276DA
Authentication-Results: mail3.psa.gov.ph;
 dmarc=fail (p=reject dis=none) header.from=psa.gov.ph
Authentication-Results: mail3.psa.gov.ph;
 spf=fail smtp.mailfrom=adona@psa.gov.ph
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.psa.gov.ph 1251A1276DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=psa.gov.ph;
 s=default2; t=1631993165;
 bh=4SQycJvyJG7NkjsVBRzIWrjvnNLmkSeuS4rQKL+iKW8=;
 h=Subject:To:From:Date:Reply-To:From;
 b=RvsO1COBA4vkPI32GvcRUJW8RXDVta/L5Gi+JJyr6C+iduFMftHXWShw2yPcV7ELf
 3YHOyHXs/xrw4Y/EZiGKxpm8qNyEArwWpUyPSXtaQ2qwwANNQraAnp0qxOI5Du5FOY
 T/NWiAfZIh44IYbEh3HjBUXhnP7NLoUxT/zHzu6E=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=psa.gov.ph;
 s=default; t=1631993185;
 bh=4SQycJvyJG7NkjsVBRzIWrjvnNLmkSeuS4rQKL+iKW8=;
 h=Subject:To:From:Date:Reply-To:From;
 b=pGighWeRvcYfAjOYNrkKW2anmtf1MF3R6ONi427OBIXDaVXnliKkqJ7D/nbO+S6of
 R6dZAclAtHfn9+JKm3auFxo8jgntuFgC5Lm9m7+vuzwTdpMexk75BC7omzjBtZGvPY
 Fdv4362pFjBHzSbOx2O+/Y+BQJIUzqg90jspyNWY=
X-Virus-Scanned: amavisd-new at psa.gov.ph
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.psa.gov.ph 19C03609F6C5
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello
To: Recipients <adona@psa.gov.ph>
From: "Ms. Reem A" <adona@psa.gov.ph>
Date: Sat, 18 Sep 2021 19:03:45 +0000
Message-Id: <20210918192625.3EC0D606DE5B@mail.psa.gov.ph>
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
Reply-To: reem2018@daum.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

I have a reserved funds i intends to loan or invest in a lucrative business in your country. I am only interested in a high yielding business with a minimum risk. My expected ROI(return on investment) is between 5-10% for a duration of 10 renewable years. I am also offering 3% annual remuneration to any interested fund manager.

If you can handle this fund in a good investment or take it as a loan, reply to this email only: reem.alhashimi@yandex.com

I look forward to your favorable response.

Best Regards,
Ms. Reem
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
