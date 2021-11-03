Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD04443F0E
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Nov 2021 10:13:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6D24403EF;
	Wed,  3 Nov 2021 09:13:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zVOSI-7ivqdg; Wed,  3 Nov 2021 09:13:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3204D40260;
	Wed,  3 Nov 2021 09:13:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 006031BF370
 for <devel@linuxdriverproject.org>; Wed,  3 Nov 2021 09:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F157C80E4F
 for <devel@linuxdriverproject.org>; Wed,  3 Nov 2021 09:12:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JX0g6pgj1E2m for <devel@linuxdriverproject.org>;
 Wed,  3 Nov 2021 09:12:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5579880E4C
 for <devel@driverdev.osuosl.org>; Wed,  3 Nov 2021 09:12:57 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id v3so3031448uam.10
 for <devel@driverdev.osuosl.org>; Wed, 03 Nov 2021 02:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=pvrfk+btNaHVnXDgHHIXgMr5VUpT/9Qf15uUZyIvenc=;
 b=RSrhjnO6b2qlxcrxtcE8iuTzXc6bFfciEu6lWsfBXHSXOyqR0KZLQXspfV6nDw/6I5
 3sa26imY2xmjKh2rPmFcjMaIWMW3VsdKfsttahH1xpyHCxN2FXUfIbUw/17CXDGrCV36
 eM3dW/+D7wnUfWUqIFExfKYrFaSDINwpGZcUQ0/uyvJUoPV/bBQuinINtuNvrjYZ21HY
 DKSEx4elFEoLIwEt29L4+UVRD3dm8yx7ChGHwJJU9S93NPSWjsDYtQJOzyft40gyArHM
 eDyjIWwve5mYKQZbxFFkvCQeZhtyEnkxiVBh/qpYsxkOresUUGM5Zl34qBKRFlubWxdZ
 hZcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=pvrfk+btNaHVnXDgHHIXgMr5VUpT/9Qf15uUZyIvenc=;
 b=qM2pN8axvEMSwOi2Tg1n/a/yTOmrGKwaJSA4rJeVV8JPr+Jku8OtK+bNZZqhzRXscp
 mpPdntU/VnCwsbTbkIqWwZVCWRoPc/4fELXs9Ju/yOiu7qeY+EZCURYd52x6ky2s0unL
 g6GBkPLvQlV2CldJvNIoIWaNo/XxP3GUwC0BYUiW/YeD/q63Ktnypwff7dK6xigFDS5Q
 Um2XRPpsDTae6kP/oG2XQLOyoc6EKG28Tqots4MrTjbjBm46h7/jE4r05PzD6v0Nj+mJ
 nRXvzr4giLR+6MvaQa7zAVzTXsJ4WMq7Z24rDfPRkj+5pe2ABdSWP41WfrskvptN1JL9
 ri+w==
X-Gm-Message-State: AOAM531PFCktxyxmBl39eycv5sr9GG07q/bYbY24cYhbyboI8dM5kxl5
 iVMCVGqacyR88edQILsb6jYd/EZYGu4U7H0wShI=
X-Google-Smtp-Source: ABdhPJzAPm+o3jdJ5o6DlbKNUmxi8r1N1HXMaxA0JndPUcG9YHisQkH7hsE/+J5yAQdCns8batGMx5SRqOnf9r+K2nk=
X-Received: by 2002:a05:6102:2926:: with SMTP id
 cz38mr38013660vsb.51.1635930776030; 
 Wed, 03 Nov 2021 02:12:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:1548:0:b0:23d:2dd2:f5c1 with HTTP; Wed, 3 Nov 2021
 02:12:55 -0700 (PDT)
From: Miss Lisha Haman <jalomustafa555@gmail.com>
Date: Wed, 3 Nov 2021 02:12:55 -0700
Message-ID: <CANDndz-Oj7WnL0FqQp5iwJwHZtQdT1mg7KLh6cp1jHKb3O+anA@mail.gmail.com>
Subject: Hello Dearest
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
Reply-To: LishaHaman225@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My dear I am Miss Lisha Haman 23 years of age , I am the only daughter
to Dr Abdul Haman from France-Paris who work with (SEMAFO) the biggest
Canadian gold producer here in West Africa Burkina Faso,

Unfortunately my father was a victim on the deadliest attack by the
jihadist On the 6 November 2019 when gunmen ambushed a convoy
transporting workers of the Canadian mining firm Semafo, it is my sad
moment each time I think about this, but the reason why I contacted
you is that I have my late father receipt of deposit he made with a
bank in abroad with my name as next of kin, The total amount deposited
was 3.7 million United Stated dollars,

Now I decided to travel for the money but embassy here deny me visa
due to the Corona virus outbreak,

I talk to the bank regarding my visa problem and they advise me to
look for my relative trusted bank account so that they will transfer
the total fund in there, But I am the only daughter of my father and
have no relative to present, that is why I want to present you to the
bank as my relative who will receive the total fund on my behalf and
also take care of me as well,

I attached my picture  with this mail please send me your complete
full details such as, Your Full Name:

Home and Office Addresses:

Telephone Number:

Occupation:

Country of Residence:

Your Bank account number where the bank will remit the fund

Once I received your details, I will give you the bank contact so that
you can contact them directly to discuss how they can transfer the
total fund in your bank account so that you can relocate me to join
you over there in your country,

Sincerely

LishaHaman225@gmail.com

Miss Lisha Haman
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
