Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 168D44B8B60
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Feb 2022 15:24:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8975E828E3;
	Wed, 16 Feb 2022 14:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MJbd-27ZPq3X; Wed, 16 Feb 2022 14:24:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 617D5828DE;
	Wed, 16 Feb 2022 14:24:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C69371BF5B4
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 14:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B701C60669
 for <devel@linuxdriverproject.org>; Wed, 16 Feb 2022 14:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id igJljE96_yfZ for <devel@linuxdriverproject.org>;
 Wed, 16 Feb 2022 14:24:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com
 [IPv6:2607:f8b0:4864:20::1135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36714600B4
 for <devel@driverdev.osuosl.org>; Wed, 16 Feb 2022 14:24:38 +0000 (UTC)
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-2d66f95f1d1so1496037b3.0
 for <devel@driverdev.osuosl.org>; Wed, 16 Feb 2022 06:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=d9L1/hp1bfaqlzVH3ilq+wg3bWVYtpkdHrT5j28qDNU=;
 b=hCiBjigrIanEEe0G4G4lWX7CO6ZguSeUqOPeeFhhBxF8LlVjfdNKwVIbrimqS06Vr0
 whLQNuzwAN1CEzO6HF99HhRShlQiTYiOic8WopeHLQ3Q8JM2ZB98KJIcAz/kHRh/2SRA
 TiC10IaCcsHpgOpTV7rL3v0i4blXBZtVLuHOq8e3eJ5QCCFtiW9TFvrn/UKA1gl+Pua6
 nskKCjGOBkjA2WnPt9/bYXOeLN3yZHaWRgbGwhQ46z8XmUDU9CKjhgFhk6eWf0muqFEo
 D2e1v/rRaj+tq8kiD3IQVYxNvUjqFW1skgRxaynEUl4XTxC+/1xVp26zTqZc3IDVPzTG
 TF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=d9L1/hp1bfaqlzVH3ilq+wg3bWVYtpkdHrT5j28qDNU=;
 b=xZt/CQc039YqPAng0NFpX7wzfuWCCZoUuHivQwzzzfSh1Uav+nktHEEz/CZ7XPmgQa
 Rxx7QfNUWKm0JZhUHKVnnp23wLzP+Qr39G/wVKdbEsF9sITMJYldc8n1IwdqW7bg7Dk+
 Z9VnW8pSXEbYnKSJNKlqpyDcGh3Xh5lyj1XsAubXR5F18mNwmDyT6NHHLuUOUK5HEz/g
 IocfzNZd7c3w4JXFLdZxEfqWVjeERjOESlxkWhpUrKs6Mgxe47ibYhG/Pc+mYen39L6/
 M0yrTAdI1/TdaqKcRcMhNNX/FBh9iQTks7RjE0PmMuH+VA0jVewXjUczanaw2CBSYlzL
 JtSA==
X-Gm-Message-State: AOAM530m8FNQUg3FxrY8drXVbtKBkp5mY3a/im4FJOBdKh14U3DIZNC+
 BWo4aV287yOEtzvdAnmjcH6oaZREYsNj0xp1T6s=
X-Google-Smtp-Source: ABdhPJxwwFh6FNj3tTb/fMYyCJOlG15OgWRp8radZlkKQ2mYRmihXnYrBEer3ZI6+vbVL5mVUDSn4y1sP2kP0LfJQbQ=
X-Received: by 2002:a0d:eb49:0:b0:2d0:ebf5:917c with SMTP id
 u70-20020a0deb49000000b002d0ebf5917cmr2624536ywe.382.1645021476813; Wed, 16
 Feb 2022 06:24:36 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:5292:0:0:0:0 with HTTP; Wed, 16 Feb 2022 06:24:35
 -0800 (PST)
From: Robert Kelvin <delepeters200@gmail.com>
Date: Wed, 16 Feb 2022 14:24:35 +0000
Message-ID: <CAPcm=sOZYeHjtAxVpRTMPm-y3OWDoSzpf1KT=hnOvAfB3T+ZJQ@mail.gmail.com>
Subject: LAON OFFER
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
Reply-To: robertskelvin22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Sir/Madam, sorry this email arrived in your spam folder.

It's been a while since the "corona virus pandemic. As business resumes,
capital funding has been a challenge as many firms are re-evaluating
their capital resource funding in the look for "breakout" options to
increase their capital finance.

Do you have any viable business platforms or projects that need financial
funding? Depending on your business platform or project/s, our principals
are willing to provide the capital to the ideal partner ready to work
for a mutual benefit and financial capital will be delivered to you
under a non-recourse finance platform.

I will be honored to guide you in securing a corporate small or large
capital investment or private capital enhancement.

Contact me only if you are interested and willing for more details
through (robertskelvin22@gmail.com)
whatsapp +1 [901] 6545402

Greetings,
Robert Kelvin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
