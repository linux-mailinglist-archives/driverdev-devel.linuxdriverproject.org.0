Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5193EB184
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Aug 2021 09:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9864940FFE;
	Fri, 13 Aug 2021 07:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ToAgKvYaX1kU; Fri, 13 Aug 2021 07:30:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C58B403AE;
	Fri, 13 Aug 2021 07:30:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB041BF8C7
 for <devel@linuxdriverproject.org>; Fri, 13 Aug 2021 07:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2742F605F2
 for <devel@linuxdriverproject.org>; Fri, 13 Aug 2021 07:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtkK_NNt_MQP for <devel@linuxdriverproject.org>;
 Fri, 13 Aug 2021 07:29:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com
 [IPv6:2607:f8b0:4864:20::233])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19C6C606EA
 for <devel@driverdev.osuosl.org>; Fri, 13 Aug 2021 07:29:57 +0000 (UTC)
Received: by mail-oi1-x233.google.com with SMTP id t128so14752410oig.1
 for <devel@driverdev.osuosl.org>; Fri, 13 Aug 2021 00:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=+MDYu2cZk5y6qEtCDaD7IWEU7wQ5JsJjonx7gGHCu64=;
 b=TSIflNVxc0np41hpLJnHRhyUe7aJV3Z5t8CACyMoZn9/ekZsmQqCt1sjW2mqO5Ck4Y
 AjfRIz1QpjLXWA8eP9NvfnI4bgq4Y4iujoKQ5BeLpDYguCKXeOdiuPKalIfS0qmmiWjf
 2b1yUA0mHYXWOBEa1aZlraa45Q2H51WwvEnqMkQow+cdDe2hAoO5Epd5cwqOZuRyP3LC
 1cijC7vxtZ/h5rEyFOIdMs6OM0oArL7jih0PAUKziBRc8Eb3zDHT4X0WNmiwIFJhpsNk
 dpqFZcqsDva7XcAO1dIpe2B8RJUEkpt5NtJCMCvYlUvfb800p7KRbiDllFt6ceEwioHm
 N4Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=+MDYu2cZk5y6qEtCDaD7IWEU7wQ5JsJjonx7gGHCu64=;
 b=U9VHyaQWPaA9q3zuVPZvC65lCvNlv5G4iMyyGXvHCwthZU7f1sV3vnTgNACUU1Ge7G
 8mOitY7W9BX9MfvHpknuqsjUU48Lnzog51QYS9D43rZuq5nigkoYGIQUDOWrpVipjJKG
 bm7BSvXp1SlKl+/gMmzlhiJZo0ILrfP2W4GsNVHcvjFd9/ygXXlYFPv5u1ZsFWzSF++q
 MFINjz41Y9MMO6Jxiymy/q64t3w2RI/Qqtcvp8iGJzbAtMGvLjK/MdNCy6b/XqYQ8a34
 tr+syOJqBkol8jMSJSoX/b0VFpU4ojaUq3ZCbjERi8jXjGxdJi2vs4dfMqq7NrdPyy3I
 H3Iw==
X-Gm-Message-State: AOAM531LEyI7SHONVV0U3IEkaRO5jl4ch4j8NdhltwHpUdeapkMQ1NZH
 J+4X/1aCgZmvnOILRT6e7bLDKud7f7iHaLvhF+g=
X-Google-Smtp-Source: ABdhPJyp7n0tYQ/IUI3AVXKGWY7nsxiwVNyq8uOgV+iasMD9CyHqFZwCz6yfHdiQ3Gf9u+T3bVrUMNtD1l09yx+WXqs=
X-Received: by 2002:a54:489a:: with SMTP id r26mr1107455oic.168.1628839796678; 
 Fri, 13 Aug 2021 00:29:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:868:0:0:0:0:0 with HTTP;
 Fri, 13 Aug 2021 00:29:56 -0700 (PDT)
From: Mr Akain Karim <aeyuhlmy739@gmail.com>
Date: Fri, 13 Aug 2021 00:29:56 -0700
X-Google-Sender-Auth: vAsMsLWN888YrQGCu_ERZ7iebe0
Message-ID: <CADS+2b5po1+XsFRgKi0Le1+CSfERf_uzXWCqYi4_3AuqtkxeaA@mail.gmail.com>
Subject: Greetings
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
Reply-To: mrakainkarim7@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
*Compliment of the day,I am Mr. Akain Karim,  I Have a Business Proposal of
$10.5million for you and I  was compelled to use this medium due to the
nature of this project, I have access to very vital information that can be
used to transfer this huge amount of money, which may culminate into the
investment of the said funds into your company or any lucrative venture in
your country. If you will like to assist me as a partner then indicate your
interest, after which we shall both discuss the modalities and the sharing
percentage.Upon receipt of your reply on your expression of Interest.I will
give you full details on how the business will be executed and I am open
for negotiation.Thanks for your anticipated cooperation.Best RegardsMr. 	
Akain Karim*  Please feel free to reach me on my e-mail:mrakainkarim7@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
