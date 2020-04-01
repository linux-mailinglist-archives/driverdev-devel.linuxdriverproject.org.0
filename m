Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5682919B077
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Apr 2020 18:28:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 474708777F;
	Wed,  1 Apr 2020 16:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rTRFBDgfWafr; Wed,  1 Apr 2020 16:28:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 313AA875E9;
	Wed,  1 Apr 2020 16:28:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E35311BF577
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 16:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E0546876B6
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 16:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8zJAERi9HqC for <devel@linuxdriverproject.org>;
 Wed,  1 Apr 2020 16:28:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 60ED6875E9
 for <devel@driverdev.osuosl.org>; Wed,  1 Apr 2020 16:28:18 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id e4so22710394oig.9
 for <devel@driverdev.osuosl.org>; Wed, 01 Apr 2020 09:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=rfCI3MmNMKhIWwdq7waZHHOt5wHpRU9+ke91xb3DAzE=;
 b=XLuJzGPwZodRwLDuU4vnRMKYee0HoSwjmH+KzA3C1paBYmLw/gZL/WxsGWiJ6csFVx
 GYtLwun7Q9BuXyh20Gh5W5m3iAmtMmWDsWP5/Hiyz9t9oCMSHWsRH6jqRIlfscGajmOY
 ODz8EsNO2QWIOv27MA/9xzQ0cKRWK1J+4TwZULsPT3dLGu9AXhSuM5564Kd9nAMMNu2e
 owPsuHDoJ8PvTEGs/HNEXx4ckd30dwIB91awdR+SZ3Mj5ghK+ABc0jVOtmSi7Vv90EkW
 +irU4YAFm+y8hyJF9CyrybCWTwd7UunCG2w1xfI4bkBNTqxPlu+cJl7hTsxvQVrrO0BV
 yfIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=rfCI3MmNMKhIWwdq7waZHHOt5wHpRU9+ke91xb3DAzE=;
 b=pQdBChpWCZ4e/IDlGlMmPmUAHAg7h1hLZwrbi5SghwZejgpBkwB7jEC2alUfFlAU56
 2wQGnG7B3L5qAjJjw1s0ee3HYRMi7SXJSz66vBYnJyU7ZgPxghv5cIelxQ1yW03sTCdu
 RPXL3GSNEDq07biDya+JAtsQlKRz8ZlKs44OBvRL97J1iXtjNYJiRGPvDks7yWVNm6H/
 OGISanbixNX1JKzhTRirZjGjAU0BVYGqhj6xUPSPWL9Zapw0xEc70Hf3r23pf0Tjm0KE
 37lzGEz8P5N7zhej09kXkoyJpCLj81NUWik35dtx/MWfUFCMpAEhsDnh9vcqe/VfG2tI
 I/Xw==
X-Gm-Message-State: AGi0PuZONOpS1bW2Kh99vmPHwu4spncxoO7lbQo60qrcdsSEdnHOeCnr
 nYY/WJ53PLZ+ybeZ1zZ/o8pAECFKwxERHrfftXE=
X-Google-Smtp-Source: APiQypIJMJ5rrbTZ5ambbjOmsd3ABxHHZDxUZKwl8yNVpSl5krKa77goA2cWmdU8NZLsqiG5AQh67/51ctqFVFgby+0=
X-Received: by 2002:aca:5317:: with SMTP id h23mr3529048oib.33.1585758497330; 
 Wed, 01 Apr 2020 09:28:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6839:2187:0:0:0:0 with HTTP; Wed, 1 Apr 2020 09:28:16
 -0700 (PDT)
From: Mrs Fatima Banneth <mrsveroibrahim@gmail.com>
Date: Wed, 1 Apr 2020 17:28:16 +0100
Message-ID: <CADdk66b4e6tVRtM2B=qrcXT+Qi6jRnkhn52jwiY8J3neFHOtcg@mail.gmail.com>
Subject: Dear friend.
To: undisclosed-recipients:;
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
Reply-To: fatimabanneth017@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear friend.

It's my pleasure to have contact with you, based on the critical
condition I find myself, though, it's not financial problem, but my
health, you might have know that cancer is not what to talk  about at
home I have been in the hospital for 5 months now I am married to Mr.
Abaulkarim Banneth who worked with Tunisia embassy in Burkina Faso for
nine years before he died in the year 2008.We were married for eleven
years without a child. He died after a brief illness that lasted for
five days.

Since his death I decided not to remarry because of the attitude of
his younger Brother who is just after properties. When my late husband
was alive he deposited the sum of US$ 8.2million ( Eight million two
hundred thousand dollars) in a bank in Burkina Faso for me, Presently
this money is still in bank.

And My Doctors told me that I don't have much time to live because of
the cancer problem and i dont want to live this money in the bank for
Government instead I decided to use it for Old people who cannot work
again and Orphans who have nothing to eat because my Husband family
people are very wicked, Having known my condition I decided to hand
over this fund to a responsible person that have fear of God to take
care of less-privileged people with this fund , please utilize this
money the way I am going to instruct here I want you to take 30%
Percent of the total money for yourself While 70% of the money will go
to charity works and helping the Old people who have nothing to eat.

I don't want my husband's efforts to be used by the Government and I
dont want my Husband people to know about this money. I grew up as an
Orphan and I don't have anybody as my family member, if you are really
interested to help me please do not hesitate to indicate your interest
to me. I will be very happy if you can write me through my private
email addre(fatimabanneth017@gmail.com) for easy communication


I wait for your response.
My regards,
Mrs Fatima Banneth
written from Hospital
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
