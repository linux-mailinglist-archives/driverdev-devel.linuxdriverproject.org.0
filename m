Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4634F57C2
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Apr 2022 10:29:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03F0B400E9;
	Wed,  6 Apr 2022 08:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KohfUIZ69eQ9; Wed,  6 Apr 2022 08:29:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AFBE140606;
	Wed,  6 Apr 2022 08:29:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC2DF1BF307
 for <devel@linuxdriverproject.org>; Wed,  6 Apr 2022 08:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E960660675
 for <devel@linuxdriverproject.org>; Wed,  6 Apr 2022 08:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVmwGAFxgDUD for <devel@linuxdriverproject.org>;
 Wed,  6 Apr 2022 08:29:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 22C4D60035
 for <devel@driverdev.osuosl.org>; Wed,  6 Apr 2022 08:29:29 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z1so2052224wrg.4
 for <devel@driverdev.osuosl.org>; Wed, 06 Apr 2022 01:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=pmsAb6dYPHTFjZjbzv39PZ1O6fWTXp9RmtE7NOGM2Fc=;
 b=I7gleZjxNJeTIUDQ7X2q3c1fbnpXMa1LOjeED/XJHdSTxJAv9x/wNU9ekLehGhi4h1
 egihVM5avIPQOuXtx8X5BAIRb8pGyuPvqzHwz98dmVjS/eW6soM6roRtMcWrmfTDZ80a
 9+UyeswZ+tnBPN6Hzuu8arOdVuTSbecAIuwv6JQW4LjwsdCqUQSU+7VmzZzKMZbTmJ/D
 +hawE8Ure3JkLN70NcwC3QBroT2FkRq8L58Jupdm8Db3rjWiLAVJXo+T2r/SMfzPjkOe
 OWxg/ciFbbK4OMRn4q3hrYt+owLuyZ8rswffM8rx1p7QmDkMQHXocD9temaBaCjuRKxu
 OmYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=pmsAb6dYPHTFjZjbzv39PZ1O6fWTXp9RmtE7NOGM2Fc=;
 b=QgauiqlaLtIANyoqCuuFJeQbFCrNrtrHl8BaS4oRx3MDFLezb2mddX9ocd3GjeO8M3
 dN5pHCa2ow0HLUUGCqWRtBovYVWlkozPAXk4lK9n0DMcReLv6dPt5gjfbaMWoBwOZSl0
 zzNCk9nAeN6ckQ2Nm6BdODrVyhXZ44tqNNAIYg5dO78ka34iA4IGXi9bDSD59Rsq8A+n
 uVsXO/eMP6j/GBIs38b1xPt1E6O0QrHci66UnwRz0x+7J/Q0K5nLBAeSKKnNMuYKuBr2
 6vR2nZ6cOfy/i3e7zy4LEMmiuOnUF1qN4sO6j3ziaek97XJU6p6ue8QjVWQQMOwepRsh
 N3+A==
X-Gm-Message-State: AOAM5339dJXiuOIgtV9J/LWxGusC8i7ZbcpCWf0LhMtlwESMl9lObCb7
 ZwyuzYjcDFzba1xfcCez6NzrUfXt9zkaTMQ3eQ==
X-Google-Smtp-Source: ABdhPJz3JNV7ifbP66vbARkyqXUrkschPnjoH8//boxRHOG8DlJxrtfPgN2CBqs7axkq4fRJ/P6IY6yVJ49vYYNCP5c=
X-Received: by 2002:a05:6000:508:b0:1e4:a027:d147 with SMTP id
 a8-20020a056000050800b001e4a027d147mr5634347wrf.315.1649233768051; Wed, 06
 Apr 2022 01:29:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:6488:0:0:0:0:0 with HTTP;
 Wed, 6 Apr 2022 01:29:27 -0700 (PDT)
From: TURKS BOH <alen.wily@gmail.com>
Date: Wed, 6 Apr 2022 01:29:27 -0700
Message-ID: <CACjWJcjJ0b2zZnANVnVTGJMM5LGLW2Q+ChLQtm9hFssSv+6Wig@mail.gmail.com>
Subject: bank of holland credit this notification for your fund as
 compensation for scam victims listed your name and email for compensation fund
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
Reply-To: sm85smith@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
compliment of the season


PLEASE - URGENT RESPONSE THIS YOUR BENEFICIARY FUND


Bank of Holland CREDIT this Transaction Notification



Bank of Holland 12 South Main St,
Holland NY 14080, United States
Phone: +1 (332) 228-4349

This Message is from the Head Office of Bank of Holland 12 South Main
St, Holland, NY 14080 United States of America, We are contacting you
about your funds of $8.5 Million US Dollars deposited to Turks Bank by
United Nations to transferred the funds to you as Your compensation
for Scam Victim because your name and your phone number was listed
among the Victims that was scammed years ago by West Africans
according to the United Nations Fund Disbursement Team and now you are
to be compensated with the sum of $8.5Million US Dollars.
Therefore you have to reconfirm your information to us such as follows::

Full Name:
Home Address:
Tel Number:
Occupation:

Don't Forget To Reply This Email Only:  sm85smith@gmail.com

And after reconfirming your personal information to us, you should
then let us know the best way that you wish to have your funds of $8.5
Million US Dollars received, either the funds will be transferred in
your bank account or Platinum ATM MASTER CARD will be issued and be
delivered to your home address or the funds will be  delivered to you
in Cash.
IF YOU RECEIVE THIS MESSAGE IN SPAM, KINDLY KNOW THAT IT IS A NETWORK PROBLEM.

This shall be our last time for contacting you on this issue of scam
victims of yours.
We need your immediate attention with your full information only for
process this fund to you
As compensation which has been credited by (Bank of Holland)

PLEASE - URGENT  RESPOND

Best regards:
Mr. Roland Max
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
