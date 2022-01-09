Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBBB488AB4
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jan 2022 17:53:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29A1060BB3;
	Sun,  9 Jan 2022 16:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q_e_yIKCnE_e; Sun,  9 Jan 2022 16:53:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EF01608A6;
	Sun,  9 Jan 2022 16:53:09 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F076D1BF48B
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  9 Jan 2022 16:52:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E67E1608A6
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  9 Jan 2022 16:52:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qck48ovQ_zlY
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  9 Jan 2022 16:52:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49CA160899
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  9 Jan 2022 16:52:58 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id b13so44075126edd.8
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 09 Jan 2022 08:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=uWbxcfUZ138oLTS3Dp9YOiNr+e0mqizsPl8fDu/UsPE=;
 b=SGVVXESIayBvbYA2wGkv8sYrUJ+yWX/eP/fiGo6uXMCM5DG0blzX5X+ngM4ZlKz0AS
 2GHjARhvjXJC9Fx27ScCfUTCkBR/LprHwfqHvJMmQpxhfBbGJeI6GtHa/IGQ0GyzP8QR
 CBDiufnfDMan2N41u8/zZQZgcM6MvpAmzwkJrC8NjwzW0Lv4EVSn5J+wP89Iq/ISxRjW
 Dcz5bb3uhcVa7VNEwNibi1kWUA8rbq59IXBu+PHEt3bj9FSLqjUMyEapciGEmZAHBXho
 qHRRiPeCvANOeJxoj9GvFoBYQpJXO/RZg8PWZGsNWxBHG0XNZgSBUIohekTInopGuG4f
 6Ewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=uWbxcfUZ138oLTS3Dp9YOiNr+e0mqizsPl8fDu/UsPE=;
 b=daVa4vaxIZO9bB1KHX9yE06jgskKl37U/j0IaNsMxeOHtIrcjIJ1U10824VqAxNFA7
 8mEx8zKH6+oy/pMBo/nbwwLIPnUCu97Gxang3rULQyy8j2fIB9bhL8+g4OEX7fsg5gj0
 8FKAZIvuSPfTM1VSxoNRos11oTcHDJhneQVF4P9MKX9PgsIs89QWlZE0EJkgnj3OMWM9
 4P6xYuBMjUv4laEZr1AKBR2oNCW3qGsbXM9VSbck9GG5LcEDrnS86k+jx3x34OH8UPsl
 Rh3f+0ptNHxtXTd3q2EBz9my35rIrS8LdV6KuoG1EFGdIXiQg20kyKv5lAF7PQllAVTy
 lfQg==
X-Gm-Message-State: AOAM533HeCRc+KUb7pDK3S0l0apiOeDY147xvDbqfCy4mw7iBoFPksY8
 NufseazIzP2l0RgPmbP47OhT9sQbexxRgIyiVnQ=
X-Google-Smtp-Source: ABdhPJyRO9eBxC+Ctp9pR7OAXDQZ7KJdQ6s6avuujirUSfaLlZH2EEHx/P0UkHfsHBOC+mGkjIatR8RGkPm8+dHphuc=
X-Received: by 2002:a17:906:b00c:: with SMTP id
 v12mr22421314ejy.543.1641747175871; 
 Sun, 09 Jan 2022 08:52:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:2644:0:0:0:0 with HTTP; Sun, 9 Jan 2022 08:52:55
 -0800 (PST)
From: ZENITH BANK PLC <debtsettlementdepartment@gmail.com>
Date: Sun, 9 Jan 2022 08:52:55 -0800
Message-ID: <CAD=yWcsj67THDurj-=8JrDQaZSDXjeg9Dj60jvBcqcSoA_ngUw@mail.gmail.com>
Subject: 2022 FIRST QUARTER PAYMENT NOTIFICATION
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
Reply-To: drdicksonebo@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Zenith International Bank Plc
ATM Visa/Swift Card Unit,



Attn. Fund Beneficiary,



The President of the Federal Republic of Nigeria through the Zenith
International Bank Nigeria PLC has
released your Contract/Inheritance/Compensation Fund of Ten Million
United States Dollars only ($10M) to you as the fund beneficiary.

We have credited your fund ($10M) into an ATM Visa Card which will be
sending to your doorstep by Courier Service on the provision of your
personal details. How to receive your ATM Visa Card; you are required
to reconfirm to me your personal details as follows:

Full Name;
Full Address (where you want to receive your ATM Card);
Occupation;
Country;
Phone Number;
Sex/Age;


As soon as you supply your contact information, your card will be
processed and the money credited into it for delivery. Please note
delivery fee of your ATM CARD shall be taken care of
by you.

I look forward to hearing from you.

Yours faithfully,
Dr. Dickson Ebo.
Private email: drdicksonebo@gmail.com
Finance and Audit Department, Zenith Bank
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
