Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5661B948E
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 00:36:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C931485B12;
	Sun, 26 Apr 2020 22:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5HvtD7oEKyoY; Sun, 26 Apr 2020 22:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85CA785A7D;
	Sun, 26 Apr 2020 22:27:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D5A9D1BF375
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 22:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D21BD860D1
 for <devel@linuxdriverproject.org>; Sun, 26 Apr 2020 22:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JZnYG5xzKnve for <devel@linuxdriverproject.org>;
 Sun, 26 Apr 2020 22:27:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic308-2.consmr.mail.bf2.yahoo.com
 (sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 500DF860CE
 for <devel@driverdev.osuosl.org>; Sun, 26 Apr 2020 22:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1587940038; bh=CK8hs5QhawDF3aaQkLB8GL9CYcLbe/kQaGmJkokiQes=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=Hjx3n6AvMpYlgF4pKSQa73ufcy6RlAtmPFs3nMSeT290qKX3pOIqCC0VVPdka2NnKqOH/TUfHfP/jXBKmkdSaTcQqC/FhvlhSBg6VfKl+W5pcycvnil0N5VeTzfp3YUQPM+uONNT7lMOQQeEAEPQzbGJzo0ocW0H4Rk6N0gO+LzJCPRiJ4joNqOqQHAgSS+xcnea504QtlSnNjkO6u17QqBJIoP/cuhfnX/Yi/Yesteb4aKL36ffrsjvr2ZAQE2zDSMY73hYg0/bJrFKgHcCGPQ/RS5IwNVfPo+0XyKc2G/znkVKbekkfOmIaqkaDZRgrA3dBzZ1dVP+HXyTs9hwMw==
X-YMail-OSG: A_vcivUVM1md47cEQ6niD7w79JrLuFuqm3WzLiYVy4_AGPSWPcOsFPuqDLmk3J9
 uDZXRRA9BhcsdD29vAJ6ddbqYs1ARFJY0fUATBMI3jMYDR04hb9Fgy_7VS_eYfKsaqbyVRqwlRAo
 mqjNiPA6N3PVyezXbVyoUndkw1OMj.UAUqqNEWtUUkUzstY_9WBDaJ0ZmpsHO7FZDAYT_V4yYa95
 n.aK6rP18Qw_dFYuu3sBmxLyuNLod3VDsVC793UQRuIeIGMPsuAeMnu.tYqrExUKmzOumDuAquM0
 lvZto.uoJlw1VGipbJZWDrqvYVbwy6MjbifuOOwQsVhYuEWGWLo9H80YSctpBAZdb29h2CMY6Ucn
 Y0XlqmH9HqoHJH4a.wwUyCkpLRKga968Zy2TcDnHujD_kst5KpFK0c29pO7q35QX2CRN67FpBlMi
 H17LL8XUGyh3u9Kr10mAJzbhiPxlxmAUfrGVR5xiiShN5llAQjpcnLcBx6DrIsV7sUWeuHyLCGV5
 IkMpTgHCZyMwOd7pJ4cyGMLGcoLLFXu0IzxaUmByDj9I8FPPOWlPRu8BOw5ZnIPMq6Dnmc89.FLU
 jQfYgTXl8kOgAWto0qQkc7Qn692qnnesR8p_SuqVLrAOEkgxWgl8RteyN5Z2uiM4ktz_tdBNGPVs
 ag3H7tUPfiQ9F0HfnC2_PK9EmuzM08l9EOB9frIlcYcxLpnVhELiGP1NmIhjoDHS2ngu3xUhSKDy
 jgQdfjEQfFh1kAfbwT.Xzu67EBvNiV7Fllw.BHp5tF1nCAvZmO7ycOKYcyqI.L6QbYE_U023WIr6
 RHlg5RNDC.IfRgbmWc6yoo8oQ1bldJW9tvUZOZypGjhaK9nw09rRUWgNdFZ7OHxgLyFcoXH9Jq30
 XfhZiIGAyGD_4V4H1bTbO7uHBHYuZYzxPkHQh7hBfYITuqvl3mLdNAaad1cLKD6FRORHGH0hCssi
 v6a5Ki5MMdk9h9T0kXbQH8qMyoz1muOmYp5G_N8VMqYE0lCXxUotXD71F1Ppf1R7.eH3bCWGVdj.
 JLVsIDpXoGSTbnVk08MywLqlI5eKVTlXCnb_cb0QeyZaema8.DwhJBVGuAEGuBPvT4_Bx2r0cKIe
 ufXPjonmlBRKbDeOVsyvXjSYkjGUxrz9ako_IzF6XrrUCzHgmxx6rHwB1sQydnOrFcWXFp97bffw
 .8bswu.TgwGmqiwQ4nEmhXQtVf14heKmfovPxQwOSrjYXxDH2sWX5HaYXPS0KVX0xd5NAfhyRmXV
 0l0aL8Hovlxzaa4Tkc_.MqXwd9bOpfWNXEGaalEte7ZIZywZ0YFQcFKIv5V1EwJmpFCpZEeGov0E
 -
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.bf2.yahoo.com with HTTP; Sun, 26 Apr 2020 22:27:18 +0000
Date: Sun, 26 Apr 2020 22:27:16 +0000 (UTC)
From: Stephanie Leo <stephanie.leo65@yahoo.com>
Message-ID: <1755502527.415887.1587940036387@mail.yahoo.com>
Subject: From Stephanie
MIME-Version: 1.0
References: <1755502527.415887.1587940036387.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15756 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:75.0) Gecko/20100101 Firefox/75.0
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
Reply-To: stephanieleo2017@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



From Stephanie Leo!

I am writing you this message with tears and sorrow and I know this mail may come to you as a surprise, I am Stephanie Leo. The only daughter. My father was a very wealthy cocoa merchant in Abidjan Ivory Coast (Cote Ivoire) my father was poisoned to death by his business associates on one of their outings on a business trip.

My mother died when I was a baby and since then my father took me so special. Before the death of my father in a private hospital here in Abidjan he secretly called me on his bed side and told me that he has the sum of (7,500000.00) seven million five Hundred thousand US Dorella, left in fixed / suspense account in one of the international bank here in Abidjan, he used my name as his only daughter for the next of Kin in depositing of the fund. My late father instructed me to seek for a foreign partner in a country of my choice where I will transfer this money and use it for investment purpose such as real estate management or hotel management.

I am honorably seeking for your assistance in the following ways:(1) To provide a bank account in which this money would be transferred to .(2) To serve as my guardian.(3) To make arrangement for me to come over to your country to further my education.

Note: I am willing to offer you 20% of the total sum as compensation for your effort/ input after the successful transfer of this fund to your nominated bank account. Anticipating hearing from you soon.

Best regards,
Stephanie Leo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
