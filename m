Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C51C45452E
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Nov 2021 11:48:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFFB8401FF;
	Wed, 17 Nov 2021 10:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uKSalUVN9K1d; Wed, 17 Nov 2021 10:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CF324015B;
	Wed, 17 Nov 2021 10:48:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80D381BF853
 for <devel@linuxdriverproject.org>; Wed, 17 Nov 2021 10:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D51160A4A
 for <devel@linuxdriverproject.org>; Wed, 17 Nov 2021 10:48:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H0LcAG5jEA45 for <devel@linuxdriverproject.org>;
 Wed, 17 Nov 2021 10:48:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DC532606EC
 for <devel@driverdev.osuosl.org>; Wed, 17 Nov 2021 10:47:59 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id s186so6113957yba.12
 for <devel@driverdev.osuosl.org>; Wed, 17 Nov 2021 02:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=1mWmKyg34vlNfOejQ4Q/r+QB+22yx7RmVHSk6pM+Glg=;
 b=dvc4Rj3PEHgxlr0thK41Q7MBTUG1CDGUFYpxGMUgKn0zEF21S9DtjLuyOna3YgCVwE
 1NR2UoPvahGRre9BHQaq72eKiie/xh9vUogqZg5rekvufzJxRimksgg/nkqI5W3x+30A
 PoijiEm7ZksVF0YZmtelfRQ34+xBol0XxcPwbxLWRk7/jHnoiblAOBbN5PujC+Ov5dkF
 zfzRWt3iRVD+kQ55ZR7AtPmPE35Ejo8jUACCVNojmiaYK+GipTIT01nDEr510V1EhTIu
 jNfiKDZh35wq6WOya2b1w+/zvQbQxmh8ddJCE0/iKONEIwuwcCnjFa6KmjdOKjXwsMjT
 aeRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=1mWmKyg34vlNfOejQ4Q/r+QB+22yx7RmVHSk6pM+Glg=;
 b=LkksMfOi4Ql7Wv059YNw+E6r7sRMROZWgiLmFrNAkSIuYTTN8tbN0Xx0AXg92a9PfE
 xxHSSh8TG8L81GwKqbDp98R32JFDKa/lj7NU33I9W4RLweTC2FygN4UCxYV3Jf0RmuL5
 ibcYJfegkuVhSG1EsjICqehI8xb4z5akZL177d0/SqJxH0lH43FHvKfBTlV3c59PpIdl
 AM86hOUxM2NxB6ux+EaeA+pC8GIJYmI1Cz/JZ+40etvkxMhRYtZTMyTCYG4yqRYpBEVk
 5a13yfLa8zNY0DXL/PeRqGidtowRYTuZAEPwaGud/EMI7tqiG8S7C3yGyLZtq4G2+zJ4
 p1DA==
X-Gm-Message-State: AOAM53193ZubV4WVjElbZSfeaj8RiP+NBF4tILOGYHrMpraHOfB4eLNE
 k8uKU2/sRxA+oG+d8/lRk5A9xlT/1NnBzuoe/ek=
X-Google-Smtp-Source: ABdhPJzAZI5HKlNe3psD18pN/4fM/yNePas47DxzCLa8oUdealeu0ZOSJ9ypbetsTchI2VkgvfHFkJF9xfsaWEe9Mew=
X-Received: by 2002:a25:287:: with SMTP id 129mr17513783ybc.524.1637146078506; 
 Wed, 17 Nov 2021 02:47:58 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:7117:b0:105:18ec:fa8a with HTTP; Wed, 17 Nov 2021
 02:47:58 -0800 (PST)
From: uhenna <tochiuju11@gmail.com>
Date: Wed, 17 Nov 2021 02:47:58 -0800
Message-ID: <CA+6axKugH3no4G+b9JPQBM9PS7TdAZ3c1WUE2s=pufpTNSWFBg@mail.gmail.com>
Subject: 
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
Reply-To: uchennailobitenone@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

May the Almighty Lord be with you....
Am A WIDOW TO LATE MR David Lunner,  I AM 59 .YEARS OLD. My name is
Josephine HOLLAND.  I am married to Late Mr. David HOLLAND, who worked
in the France Embassy a here in Lome -Togo West Africa for nine years
before he died in the
year 2019.

You are chosen to Receive A Donation Cash Grant of my late husband
that funds $5.7,000,  000,00 (Five Million Seven Hundred Thousand
United States Dollars) to help the poor and orphanages through your
sincere help before my death. I am suffering from long time cancer of
the Breast, from all indication my conditions is really deteriorating
and it is quite obvious that I wouldn't live any more longer according
to my doctor because the cancer has gotten to a very bad stage that no
hope for me to be a living person again, All i need from you is your
sincerity to use this funds to do this project as i desired and I need
your information as where My Bank will be sending the funds,

such as:
Receiver's name:_ Address:_ Phone
number:_ Country:_

Please do not be offended by the way or manner I came to you as a
stranger to do this, it is about the only way I could get to you after
going through your contacts Id. I shall give you the contacts of the
bank. For legitimacy with  a letter of authority that will establish
you as my appointed beneficiary of this money.

I am waiting for your reply.
From Sister Josephine HOLLAND.

You should contact me through my private email address:

mrsjosephineoneholland@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
