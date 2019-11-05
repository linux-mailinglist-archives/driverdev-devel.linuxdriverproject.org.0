Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB45EFE4D
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 14:25:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7489A8A771;
	Tue,  5 Nov 2019 13:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vILxrxcYxMyP; Tue,  5 Nov 2019 13:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE79E8A2FF;
	Tue,  5 Nov 2019 13:25:21 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBCE71BF3E3
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 13:25:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D8550888FD
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 13:25:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KTeaQ6yGTT9L
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 13:25:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB30E888AA
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 13:25:17 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id z12so6213401ilp.2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 05 Nov 2019 05:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=97PLcugS6GZdabx19meRQ8j3vi9YDSDqg5Z1P+ZaiEs=;
 b=FqcMuYoxdquH5rXFn4Dq+pUMiFJ0ZMHD9fh6T+LQR8fWISz4xNRvLf9LOg8ul1mjJL
 hF4oaKq53zIUQBiNSbbaF1d9rDmm1O6lZjwfkksAcTxE49LcGL+KyMdLjiCFO4mywe3q
 HzvE5ZefNq1dIyNm9acO8WKZtjsof5FoIKCI3FlhipUuSLHfVkugiVGLNkdA+5tS9lpU
 Hin1yu8BqY+tZrFgQ82EJZ09jGYQo+KMXlrL+mp0ZF1ap1Ri34Ru6myiSjyKRSHz7zP3
 sZEnwFPG35gDD31On7ZcAEqA6KA5HL2TNtypIiehgYKiB7BO4kxhTrx24CFu2YRLHh7r
 ceOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=97PLcugS6GZdabx19meRQ8j3vi9YDSDqg5Z1P+ZaiEs=;
 b=g7b8LxL4x7T30VYPrvJfUIJTJnM0tKE79r5D18hmRNOC8ihT2Rj2YGTUMgMrLZLipQ
 lV8eeXUj/H9c5N3gnZASH1+F/NlQoLE4CM5kesYduxrf3IW8CnG2yE1hAgvC9uLJwfsB
 2CGmKZ9h57SDCYkr1oo3WTLkDo+4nQFLkpOB8MnAgBzNFgs7kTBUierbsoDTTEHHhfET
 Fl3ySsT5/dAwkyM4oe6fULFk0oMXB64ZvfCj2Kut0moQIqaunoI7AN3slg6oYin/8Dh3
 Pm1F1Jp4+qsj3s0tL9yx4adzRma79MPvMbZh/r2bEgu+RhnJCmVF114FcpYHP5JaBQgV
 1Q4Q==
X-Gm-Message-State: APjAAAUgI3CBsfx2BbdqoD2QjqBDYjlKqwmd1AvVPJI8x7JoRBkdrVbe
 1nzqQdKRmLUcsZYdMQYNjJvWMWKBTB/geNtTXbA=
X-Google-Smtp-Source: APXvYqy22e9S24Uekq3lK5RZpqnEtVdeZ0qagprwxEgMQmVDvoC6sCjvhCMVnKa+/elTEuwxUVsE5sapVDEuKBjSJeY=
X-Received: by 2002:a92:ba98:: with SMTP id t24mr31762294ill.63.1572960317163; 
 Tue, 05 Nov 2019 05:25:17 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4f:f290:0:0:0:0:0 with HTTP;
 Tue, 5 Nov 2019 05:25:16 -0800 (PST)
From: Barr Paul Brown <wilsonking234@gmail.com>
Date: Tue, 5 Nov 2019 14:25:16 +0100
Message-ID: <CAKAAGy=7KKWXk3bKRr9Ci0o2dnC8abZwDT0DPOseT_+4C1wQkA@mail.gmail.com>
Subject: RE: FINAL NOTICE
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
Reply-To: barpaul.brown@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn Beneficiary,

                            LETTER OF INFORMATION

Did you authorize Mr Walsh who presented document of claim purported
to have been signed by you for the release of your part-payment Ready
for shipment to your home ????

He is Claiming the fund while the Beneficiary Still Valid in your Name.
If this Authorization was not made by you, kindly get back to us within
48hrs and reconfirm the below info, As your funds have arrived States now.

(1)Your Full Name=============
(2)Mobile Phone Number======
(3)Current Home Address========
(4)Fax Number================
(5)Country====================
(6)City======================
(7)Age/Occupation ==============

Contact Dr Roland the shipping agent on his number (978)5400089 email
royalhorseshipping@outlook.com for instructions and delivery of your box
before he leaves States for Australia.

NOTE:
====
On Know account should you tell the Agent that your box contains funds
because I have already told him that it contains family belongings.


Yours faithfully,
Barr P.Brown
London UK
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
