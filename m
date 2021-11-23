Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB1445AB61
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Nov 2021 19:39:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D225403D4;
	Tue, 23 Nov 2021 18:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rpvt3fqqMLiJ; Tue, 23 Nov 2021 18:39:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD94040169;
	Tue, 23 Nov 2021 18:39:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 45A461BF39C
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 18:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 403AE40169
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 18:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CNvXSarFrDOH for <devel@linuxdriverproject.org>;
 Tue, 23 Nov 2021 18:39:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 871FC4010E
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 18:39:20 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id v138so47018ybb.8
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 10:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=j0JNrkjqaSqbwzj2a3jRGd70xFLI37qdoAkL2CiRb2s=;
 b=pWJpzFJu8cB1CJOfvSWr+mbcM8wcIzpcxy8q7vtpFrxlt7baWw2NMDFjAOJV95WEMl
 XLYyThSWwV09QKhjZWJkCpmqabPbNuX2RKxwqH5IhFJ4/mCNS/0f/HEyU+IH1O7UQecG
 yMWbrZQbmFU3iQGf4/5GQq7GuhgauoZ0Ol/uB21nPSIoXDOb5kx4muD8Ui3bxveXc3Lv
 1sD6pECA7K0Y2/2r5l78MxsiS0hlLROyL3/TyFP0KnaRIGV5Gxdc47zjhmM4o3mY0b9v
 Vys+nsmsRt2U7avIUdDC7E0JO0UStpiuo69WVUFKkJIcH0+Z0uaIA5FLb4zeHdi7Njlw
 mbtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=j0JNrkjqaSqbwzj2a3jRGd70xFLI37qdoAkL2CiRb2s=;
 b=okjcdFYdVlMMcqAZt1A9qducLUQBANI8TD3Nifx89SqqU668plysA3l5pWAX8rL3Ea
 GxtJ4IgP3qGAZdrVB30MCDakKqdyPXCPQc/aSnwxti6dBmYrtlsZvkdUZsNDihnQMGnU
 W1ZQSCaPgUfIXe4Qmxs+CPeyxhw7MXEpqJIiVhNVq+rlh2WeW2i3352dDWlC/+n3Jc+t
 93xomnDiEs5AkMcOX7NVBNGyoDtTIvIK7ErGTZL0Xfy4DIlVSV3gxxdUbGr//jG82k0t
 sR6g2UZQ/36j1auHHlbHNRNadrDQjIvA/6uwvitQ/+S63Exek+Rk6XqatC4J+PYBXXuW
 Rk3A==
X-Gm-Message-State: AOAM533nmILJjrA8ATWBe5gFC3ihOhTry2QyC+1EI7TJPMQAEqjDfVGT
 isECnMo00aLysEKGlaNphoPbt6yIURkzLNMRCw==
X-Google-Smtp-Source: ABdhPJybpTCuPyKee0oIKgMiI9lnhHydMT6lNVvCnTgORKNacigQYej1wr60d8txdjmP42DLiZDoWrxaF5/wT8UhRxU=
X-Received: by 2002:a25:4d87:: with SMTP id a129mr8291830ybb.310.1637692759420; 
 Tue, 23 Nov 2021 10:39:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:240b:0:0:0:0 with HTTP; Tue, 23 Nov 2021 10:39:19
 -0800 (PST)
From: Mr David Wood <mr.aboubacar.sangoul.2020@gmail.com>
Date: Tue, 23 Nov 2021 18:39:19 +0000
Message-ID: <CAA5AzaQAz7r3CQf9zUEMx1K5kcwrHo8x2WX7NtkUh3RVHiq_ug@mail.gmail.com>
Subject: Greetings,
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
Reply-To: dwood9456@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings,

How are you doing today?

I came across your e-mail contact prior a private search while in need
of your assistance. My name is  Mr David Wood I work with the
department of Audit and accounting manager here in the Bank of Africa,
There is this fund that was  keep in my custody years ago and I need
your assistance for the transferring  of this fund to your bank
account for both of us benefit for life time  investment and the
amount is (US $3,500. Million Dollars).

I have every inquiry details to make the bank believe you and release
the fund to your bank account in within 7 banking working days with
your full co-operation with me after success Note 40% for you while
60% for me after success of the transfer of the funds to your bank
account. Below information is what I need from you so we can be
reaching each other,

Here is my mobile number email  davidwoodb2538@gmail.com


1) Full name ...
2) Private telephone number....,
Receiver Country..,
Occupation..,

Thanks.
Mr David Wood
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
