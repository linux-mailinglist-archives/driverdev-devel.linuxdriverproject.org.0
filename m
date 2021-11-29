Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E0046171B
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Nov 2021 14:55:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B71D81760;
	Mon, 29 Nov 2021 13:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8g9Z9648yxD; Mon, 29 Nov 2021 13:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19F4381759;
	Mon, 29 Nov 2021 13:55:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66E301BF3AE
 for <devel@linuxdriverproject.org>; Mon, 29 Nov 2021 13:55:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 54ECD401C8
 for <devel@linuxdriverproject.org>; Mon, 29 Nov 2021 13:55:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ri4jKXU9fe_u for <devel@linuxdriverproject.org>;
 Mon, 29 Nov 2021 13:55:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A100B401C0
 for <devel@driverdev.osuosl.org>; Mon, 29 Nov 2021 13:55:31 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id o4so16904397pfp.13
 for <devel@driverdev.osuosl.org>; Mon, 29 Nov 2021 05:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=dWfWKeJwLE6H+pP5wJxa7bBa1YHhGb5418efKIFklBo=;
 b=kBU1ER1EiWtkX4xXLOShZQutczg4VdHpXdCUJuyRQcVJ8Yoo+iE2Y2goRETiIliwg5
 9um+SPzMKZdJl6n07kNBABxluNwVb6lOXljkwYX1u1AFt2YJX/usnthg1bg3GNef1BP9
 LmrjMjpUtXyDn5ucTkoPGpExFNT7j04uEle413xaaW6v9YkUR4wfbapPwdVeajZFIn3l
 VKwaj4Y6nSjt68eL3job/TCCKNqv5ZBchageUWqhu4YCT5zs6p5ffrCIp68w//zWNGjv
 0uzOI8nYzWHfWH7R0LKm3FuEShW4mNikA2gIC/xNqVdmhbzSBHFbN3Apx2X8aDfmacl5
 0jVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=dWfWKeJwLE6H+pP5wJxa7bBa1YHhGb5418efKIFklBo=;
 b=0QioXYgsYQlv0hqTbQnCrtQxGdT7dgNlL3AH1uzPAQqu5I6JmZAhqvOKPnyxhwutq5
 5rUYC54WSsYZCngCPfvZzDr4LdIrP2ABfYCKGUUdlU2YluLTGWlJ690DOmPZg4+dOLaK
 LqUGxCb96dCUSbAP1DC6osb0gDEh0JGH/lcUhvJ5USFRXoLam+bGId14yfl8P0sSzf0N
 jzvqMHaUMqT51nruES0jmyKW0QgfKZekg2fTxN4ZVbM0QQBr8h0EUDPNEyS+9mfjCAyz
 aG3avXDJP2SFlEiUoyyppVE6VnFKFGcUgmBMsnrYCveUJhBQtLN+B4ixQDb/by3SiTwW
 icHg==
X-Gm-Message-State: AOAM532Z+9AZwLsQA+hyiBz7GQf2xN2WZxtFKCLeZ6HUT3tjMt54mZ3A
 9eyPAAdPttfvi9s/43VujCsrWO4Z2GJwNkaSyiM=
X-Google-Smtp-Source: ABdhPJw9LnwaCc2t3oiwBv+kVA07yD0TALioTyE87rxXuvUPlAJZCA+N3CbGgsvAFVNBHRNvpBrRgvYKrVwkQkxAXjM=
X-Received: by 2002:a63:790b:: with SMTP id u11mr35349301pgc.71.1638194131055; 
 Mon, 29 Nov 2021 05:55:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:e246:0:0:0:0 with HTTP; Mon, 29 Nov 2021 05:55:30
 -0800 (PST)
From: "L.Meerick Day" <meericklaura1@gmail.com>
Date: Mon, 29 Nov 2021 05:55:30 -0800
Message-ID: <CA+mHm1oxXX-v65KZXRJwVBRAo3o4_dTz+1Ltx5VZKmkiHCojmQ@mail.gmail.com>
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
Reply-To: laurameerick@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings my name is Mrs. Laura Meerick Day  from Kuwait. I am married
to Mr.Karim Meerick who  was gas and oil engineer before he died We
married for years without a child of our own. He died after a brief
illness that lasted for four days. When my late husband was alive he
deposited the sum $3. 500,000,00 with a bank. Recently I sick cancer,
my Doctor told me that I will not last for next Three months due to
the cancer illness. Having
known my condition then I decided to donate this money for charity
organization a good person that will utilize the money the way I am
going to instruct him. Get back to me. Thanks and Remain blessed. Mrs.
LAURA MEERICK DAY.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
