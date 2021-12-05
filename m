Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 675FE468CDC
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Dec 2021 19:55:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A36E340533;
	Sun,  5 Dec 2021 18:55:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D8_mtq2wJza1; Sun,  5 Dec 2021 18:55:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2972F40426;
	Sun,  5 Dec 2021 18:55:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C96361BF46D
 for <devel@linuxdriverproject.org>; Sun,  5 Dec 2021 18:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B90586070E
 for <devel@linuxdriverproject.org>; Sun,  5 Dec 2021 18:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5F0F9gOmr0Da for <devel@linuxdriverproject.org>;
 Sun,  5 Dec 2021 18:55:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 122E360706
 for <devel@driverdev.osuosl.org>; Sun,  5 Dec 2021 18:55:32 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id c32so19991580lfv.4
 for <devel@driverdev.osuosl.org>; Sun, 05 Dec 2021 10:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=qztlLTDQmmEb0Xq8BgFUWcdE0xJC0fnWX5znumDPlIQ=;
 b=LQ/0+22XOyZkoeBjLMvHiyJfNAlUMp3OirXDfxLK3Xm110rDGBu7q6c315XJPV3YmV
 R4yGhhcl+Ed3ZZz/QHB0Mz4e3fGtqgNJ8I1bBFxhmQJvJ3e9Wq2IeXl/s5UZyGZZK8B6
 PKpA9R3jHxly7EWbBf8ua61EAuhRW3TCh7zZN7eyrXxSBDn6ctMN5hILTAfODdGIBl5H
 dctxeFznco7T69FNSRjbByZbughAqJJKClaCx0STB/LT5UY+mgO7R7n0GX1uFhOvZIOE
 6J/aAhfmShsZrJrCCqNKO2fCKALfm738Nhhf8oSsjTiTaG6lRPhlF8DRSHpZfZ21T0HP
 1NTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=qztlLTDQmmEb0Xq8BgFUWcdE0xJC0fnWX5znumDPlIQ=;
 b=RIEUYIG60ATgIfeMfEb4kqBw/hVbUivTlTBFTgUvEgbLrfPZY227eh8IbOimq3ao0D
 ggWXpj82JtIjLA5J07CAplKoIEkL2qzhy0yslLv2IjfMoK4u3hIqtOUhsXeDk5vaRCLh
 cXzUBP9ldiRt2B5xjGSyry6578SJhwuEl8rxIy0HzGiNqMbSe2ravrNrjtxUa+ar1TPA
 q/nMniaoKxKiED+kAcuP2ayY2XnVMNcfEqZoW3TGQNJmASV3JGVuweh91GDP4NIHaq7w
 2Z9YT7BgRZygR9lN5jxvfzkyBHpwR6pUR/S+Rj2wiw7G5TDTrPz8nQ+sUJyZx189/ivv
 dmew==
X-Gm-Message-State: AOAM531zGBcVgGGeAdA5OIHoCWhuqro/C/+F/rjM4VIdii8PkXPt5NEX
 9Jvm9L+hBA8Bi/TuV6FxX0Z10fVNLqZaw7vOPlU=
X-Google-Smtp-Source: ABdhPJyid9uDG6f94DLIjVxZVRa/YCeBnGmfwdCqlywAVjp5F4SR8gXjWgQmdIytfY+ty+THNQl90KQ03SsGYGrX7JU=
X-Received: by 2002:a05:6512:31ca:: with SMTP id
 j10mr30752958lfe.643.1638730530820; 
 Sun, 05 Dec 2021 10:55:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab3:6bd1:0:0:0:0:0 with HTTP;
 Sun, 5 Dec 2021 10:55:30 -0800 (PST)
From: MRS Salem Chantal Lawrence <favourlaboso@gmail.com>
Date: Sun, 5 Dec 2021 10:55:30 -0800
Message-ID: <CACrC5j3fVBX1+qtCEUhNyzEhrr0K_Xurqn5czu8BmqLuazCeeQ@mail.gmail.com>
Subject: ATM VISA DAPARTCARD
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
Reply-To: salemchantal@mail.ee
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention


You have been compensated with the sum of 4.6 million dollars in this
United Nation the payment will be issue into Atm Visa Card and send to you

from the Santander bank of Spain we need your address, Passport and your
whatsapp number.


THANKS
MRS Salem Chantal Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
