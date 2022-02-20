Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8840D4BD113
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Feb 2022 20:43:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 670234031C;
	Sun, 20 Feb 2022 19:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CqaaYjeid2bN; Sun, 20 Feb 2022 19:42:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA6DF40187;
	Sun, 20 Feb 2022 19:42:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 23B631BF476
 for <devel@linuxdriverproject.org>; Sun, 20 Feb 2022 19:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 109D84031C
 for <devel@linuxdriverproject.org>; Sun, 20 Feb 2022 19:42:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P42wxaxNClmz for <devel@linuxdriverproject.org>;
 Sun, 20 Feb 2022 19:42:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from hrast.sumfak.hr (hrast.sumfak.hr [31.147.204.33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47BDD40187
 for <devel@driverdev.osuosl.org>; Sun, 20 Feb 2022 19:42:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hrast.sumfak.hr (Postfix) with ESMTP id 298681D08F09;
 Sun, 20 Feb 2022 20:34:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sumfak.hr; s=default;
 t=1645385670; bh=o9BBV28bahOEBAv5kPF7czLJyXlTgYMXDxLieqs4+ps=;
 h=Subject:To:From:Date:Reply-To:From;
 b=dWiyJbm9htmCzS0MvkR+GkZ6CBD0pY3xFftN4WLTuOZ1IWiycgz6T98iSjGcx441k
 mL/vNl4vSzV10TtPCcq5nKmOnHp1G/MpPZiwrcMWYv1OtWBT+g3Wxt3tCjCoJFBTP8
 ZlTEnQPR3YiJIwTbDJ6/MVcUhMQxEC0BLN8RIhW0UTl2B5Y2pSKzRKdfwNfPhLxJm9
 32bLNARcwtTb5P6vSqEOfiDE91e+pTwltby4V53G5jT6Vp1mAjR6AAbKe1eRzCCCye
 QbbW3HsqdoOOorstC8fgiNmdYYDwzdCOtW//NJNFzbQeJaiMmOSb/eQAoexyLAoPDD
 vzJ+mObEZmrHA==
X-Virus-Scanned: Debian amavisd-new at hrast.sumfak.hr
Received: from hrast.sumfak.hr ([127.0.0.1])
 by localhost (hrast.sumfak.hr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7dXHIVl2yIxz; Sun, 20 Feb 2022 20:34:27 +0100 (CET)
Received: from info.mhvqerywi4muvkclihzd3fbddg.qx.internal.cloudapp.net
 (unknown [13.70.158.215])
 by hrast.sumfak.hr (Postfix) with ESMTPSA id E60691D085B2;
 Sun, 20 Feb 2022 20:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sumfak.hr; s=default;
 t=1645384833; bh=o9BBV28bahOEBAv5kPF7czLJyXlTgYMXDxLieqs4+ps=;
 h=Subject:To:From:Date:Reply-To:From;
 b=sVh/cHT7nCOAtJxZU8TpG3sQBUqJF+RK455zAmgOlaQaZgC3uy4GF8mqd/kB+leaQ
 T4QZhoYWKAEj1mIx84q6RLbE1fePypZZ0kCas9MvfJDXojnPQiCsNsdCSTJwqBUcvD
 /nrOx1U4ZfUoSBUDKCrNMqLu+a/TgigKZA/iKtt0jwkQSEA8HDo0qxx94EIoyAYVoZ
 cb3ROaXWgRzuHz84IIM+i6oEIxCx+RiUVLm1E/k5McH/29ma2KLcIdeWuJy6fuYbmx
 /tlNc5I1rjSGYd5XEGxQQCFF0fQGbXLDGT/e7U7JfYCOmFUhECNIymbluN8yZMsDUS
 tLuhmh4n2EUkw==
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello Friend
To: Recipients <zspanjol@sumfak.hr>
From: "Ms. R. Al-Hashimi" <zspanjol@sumfak.hr>
Date: Sun, 20 Feb 2022 19:20:14 +0000
Message-Id: <20220220193430.298681D08F09@hrast.sumfak.hr>
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
Reply-To: alhashimi123@yandex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Sir/Ma,

My name is Reem E. Al-Hashimi, the Emirates Minister of State and Managing Director of the United Arab Emirates (Dubai) World Expo 2020 Committee. I am writing to you to stand as my partner to receive my share of gratification from foreign companies whom I helped during the bidding exercise towards the Dubai World Expo 2020 Committee and also i want to use this funds to assist Coronavirus.

I"m serving as a minister, there is a limit to my personal income and investment level, I cannot receive such a huge sum back to my country or my personal account, so an agreement was reached with the foreign companies to direct the gratifications to an open beneficiary account with a financial institution where it will be possible for me to instruct further transfer of the fund to a third party account for investment purpose which is the reason i contacted you to receive the fund as my partner for investment in your country.

The amount is valued at Euro 47,745,533.00 with a financial institution waiting my instruction for further transfer to a destination account as soon as I have your information indicating interest to receive and invest the fund, I will compensate you with 30% of the total amount and you will also get benefit from the investment.


If you can handle the fund in a good investment.PLEASE REPLY ME ON THIS EMAIL: hashimirrr22@kakao.com 

Regards,
Reem
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
