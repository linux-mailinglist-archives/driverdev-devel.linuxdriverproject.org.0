Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE6648E7E8
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jan 2022 10:58:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A6AB404E9;
	Fri, 14 Jan 2022 09:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3RNlwx5VXZu; Fri, 14 Jan 2022 09:58:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32757402A8;
	Fri, 14 Jan 2022 09:58:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3EB141BF3DF
 for <devel@linuxdriverproject.org>; Fri, 14 Jan 2022 09:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 265C183EFF
 for <devel@linuxdriverproject.org>; Fri, 14 Jan 2022 09:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HEOfjkYftcdO for <devel@linuxdriverproject.org>;
 Fri, 14 Jan 2022 09:58:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0757A83E73
 for <devel@linuxdriverproject.org>; Fri, 14 Jan 2022 09:58:07 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id p27so16864556lfa.1
 for <devel@linuxdriverproject.org>; Fri, 14 Jan 2022 01:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=2wT87Qa6HwFAqyntG1MakHhWj8kLjzLxj7rVHdpzKMc=;
 b=cYgHa/1QqkcjyBbWs+/9C2Bj6g22fNlZmKHjkNRdX0nlJDvEFnxGh7T+H3Kn3DpyDf
 8yGwIU62OHiaqlH9e4NHqUCYDsa8d2VkjYvSwVc8LfDuhvOningG9XoTOD9a/D0MiC6M
 XAubLZvm1x92BqL7bWp+6bSiFxooFZAM0Ho+znzWdftQYxDiJuvD7EdQG0Uj95Ry3lVC
 s/LR4/K8RUIBg6mFkzo3O9ewe1H+v3bs3dyDaWU8fHec1LxaJdR4Ey8ZGf+aGtEEcXdD
 hHeCYRHSAZ0GeKxvr9t1jm4vINh3gbF8csBnLus3t60uquoFDQ1bZ3QuDOmozKxbNOtU
 2kCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=2wT87Qa6HwFAqyntG1MakHhWj8kLjzLxj7rVHdpzKMc=;
 b=cXL8LCNkeGIdO2Hw8vRrdqbYHoIFQHvAWb7E7yCskoMpCQeaC2g7ScVDFtZxXUW5R8
 x9SIqIFOAlrU3Y+RW8JJi0cXxF5xGsT/Yo8WYzJma5u5EPqgfVYv8xkCImG0nqV2/g7R
 fDHs0NOjK8DT97XzTaO5QVZGsG+Y7rXD4O2MvZ76nUqn0dF/ayBUmJqe71E3N1RCmVMH
 bA9eeKgHFtLXLfhHO2Szu2yg1tZ3cgHh9Bn2FaI+XWvsgnQcidg0SSHSIM4n74Fot/PD
 9P6eZouuGLtAt724ufoP5xAGn9VlJQzG8tnY8iZWVO+N9G5acHO3k9ZHCsGir48EdKV1
 Z05Q==
X-Gm-Message-State: AOAM533IdR7Z9txrhYBTuJCJSPr1Q7/ThPKiOfrl4bdPy9EixW9DDaFM
 Gy8lKbQwREwZRb9CPL/jHkTUWzkrn+bqp594tZI=
X-Google-Smtp-Source: ABdhPJy0pntHAcF/Kw0IHlC5j8aITyJqQLvVaz88QpqNf4YFMY93Gv2lI/vdRA4yBQG81VuXOPV2APpB0mkVxdOPI5k=
X-Received: by 2002:a05:6512:1084:: with SMTP id
 j4mr6073913lfg.497.1642154285509; 
 Fri, 14 Jan 2022 01:58:05 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:aa6:da8e:0:b0:186:4e88:23de with HTTP; Fri, 14 Jan 2022
 01:58:04 -0800 (PST)
From: Solomom Williams <benardnardo@gmail.com>
Date: Fri, 14 Jan 2022 10:58:04 +0100
Message-ID: <CAKjjv80=kM7v4nfe04UoQh9mEgH1W_AxFynRJfxckwHEYMrEtQ@mail.gmail.com>
Subject: re
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
Reply-To: dpt.corisremittance@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear winner,

I want to congratulate you on this great victory, in which your EMAIL
address won. I want you to understand that the lottery takes place
every year (Missouri-lottery 2022).

This is a website where you can check it out yourself though we have

technical problems:    https://www.lotteryusa.com/missouri/lotto/year


(Winning number: 4-7-10-12-17-38) Loto: $1.2 Million

All participants were selected using a computer voting system made up
of Microsoft / YAHOO / GMAIL / MAIL.RU/INBOX.LV FACEBOOK and EMAIL
users with more than 20,000 companies and 3,000,000 email addresses
unique names from around the world.

In fact, your email address was one of the selected addresses that won
the national sponsored lottery game (Missouri-lottery 2022) this year.

All you need to do is select one of the following options to receive
your fund and contact Mr.Anthony James on this email:


Mr.Anthony James email: (drctrmo@gmail.com)


1] Bank transfer

2] Express delivery

Select one of these two options and get back to us to allow us to
proceed on your winning fund without any delay or error.

Anthony James
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
