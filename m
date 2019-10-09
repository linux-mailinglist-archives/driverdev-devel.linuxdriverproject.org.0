Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B08ED0BB4
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 11:48:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19B63882AD;
	Wed,  9 Oct 2019 09:48:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xAvvVR6W1xP9; Wed,  9 Oct 2019 09:48:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 076098826A;
	Wed,  9 Oct 2019 09:48:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1A1B1BF404
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 09:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E67A687789
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 09:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oEXxmeUVZSVi for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 09:48:03 +0000 (UTC)
X-Greylist: delayed 00:06:51 by SQLgrey-1.7.6
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
 [209.85.219.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1933D87787
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 09:48:02 +0000 (UTC)
Received: by mail-yb1-f195.google.com with SMTP id r2so527392ybg.3
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 02:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ub-ac-id.20150623.gappssmtp.com; s=20150623;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=GO77O9NugfDMF3sM0pFxjAVwqVXEKORDEOteZl6SPpM=;
 b=NxNc43p8MMrB2pZ2C5fy2y18rNJvteaOMVijhWs8CXsEpKeFLRh3eiBxYmNrYnBWGW
 iirSFk2zRxB/Z3mtmBkizQPiqf0baX/TyNLTt0NABs4JPcWLP3q1H1G0nPo+xsJMdgsU
 qMIb+KazU9oJfb0szl30g9bxSFQqQAoGwBbh4GBaOjXUgGamnnJyO0y2IR+1ALRguDWJ
 0c6zA+bQNjGUwTfuFhlbgxZv43jGepDMjrPJPR3TeKx42mCKvlNWRscL+dt8Z9AGgfQ4
 BZD/EiObCee8ZW1X9JU7sBaLaO+ftMZXtscntPi1+XAJoq5XOG2Kwu34e8A+ZM9NQvSe
 seeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=GO77O9NugfDMF3sM0pFxjAVwqVXEKORDEOteZl6SPpM=;
 b=qeOPIwjTLm7rM1o2yjfpJoWvJwOdSpWjblWqxkGb3lytA7o2Xv6lr0KSBOzKb4B/nX
 KDk+S3cTfLwjH2V7OSmFVe82DcCSSZYSca4l0qkQyEFeplaK2B3OnU2wSOImYJjdmIqE
 s37ZP86EY9tsxesjksl99wwfuAraHEmTndjZIWWZmIWqxcdmI7I+Blh7RtK6Ig5m71Xv
 U+dkQ3UCvU0pfKiZj7KZxNW4OASJE+IS9uJAJpFxzN6XbyQx/INY7ETCvxkM4m15iVDj
 MlF5Sg7InuI+pxpjQHnz5yJtdwRns5tjgALup2xcsgw8YeXnhZQDx8VLbN/b5uU0bh/9
 5HcA==
X-Gm-Message-State: APjAAAUFls7J4yH6zfCIVHQmIGBH5Wg3gIIKti+CbVG967TjICPQnRt8
 tAkBcPyUcsFGPlPRUsCT4WLs70dIY+S5RmwlcC4qMG456iVUafs=
X-Google-Smtp-Source: APXvYqwaeyhWc3a2ahK7ExCTY+Nkai+zh6TtMNxVZIVOdELz5FhbFB5/hZf7tJpuCqg7TpJZstb/tV5Evga72v7XHWI=
X-Received: by 2002:a25:cc56:: with SMTP id l83mr1393249ybf.69.1570614070810; 
 Wed, 09 Oct 2019 02:41:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:abe1:0:0:0:0:0 with HTTP;
 Wed, 9 Oct 2019 02:41:10 -0700 (PDT)
From: Nadia Artha Dewi <nadia_dewi@ub.ac.id>
Date: Wed, 9 Oct 2019 10:41:10 +0100
Message-ID: <CAPkHNVwYoC5g-AOX73mbHdXg05jh6DALjgYaeUyjRahxohKXqA@mail.gmail.com>
Subject: Apply For Financial investment at a lower rate 2%
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
Reply-To: sunrisefundingltd50@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello,

We are private lenders based in UK.
Do you need a loan (credit) as soon as possible. Are you in search of
money to solve your personal needs or finance your business venture,
then get Your desired loan today! Consult us at Sunrise Funding Ltd.

* We offer personal loan & huge capital loan at 2% interest rate to
the general public both locally and internationally.
* Credit amount range from $5,000.00 -- $500,000.00 and above.
* Special $10,000,000.00 Loan offer for huge project also available.
* Loan period of 6 months -- 10 years.
* Loan is granted 24 hours after approval and accredited, directly in
hand or bank account.

Please note that you are advised to contact us for more details via
the following e-mail address below;

EMAIL : sunrisefundingltd50@gmail.com
FIRM : Sunrise Funding Ltd UK.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
