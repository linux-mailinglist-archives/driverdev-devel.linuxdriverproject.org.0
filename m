Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EEB457DEA
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Nov 2021 13:32:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD7AB827A8;
	Sat, 20 Nov 2021 12:32:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4685l2Ns4Mfm; Sat, 20 Nov 2021 12:32:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48F57819F6;
	Sat, 20 Nov 2021 12:32:20 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBD7D1BF36D
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 Nov 2021 12:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6AAD401FD
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 Nov 2021 12:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a1hECT0Nt4tj
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 Nov 2021 12:32:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 686BF401C4
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 Nov 2021 12:32:09 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id d24so23131830wra.0
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 20 Nov 2021 04:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=w2dLnl5hsLVKZTBAdcVFnDnMtM7+guW1LU+8LG4nir0=;
 b=dp08c78RK/cKdkLcEe5oTWVItQbA/mSBZUvcdNjKjoEonsOgmj+I3GKva3iaWNyMkt
 CCIs2ktfIKSlFzCn5+8Hr9rfVlkW2xAcoXH1NXzpdeplBMm6CMUWlUfjratbW5VZHZi+
 F9u0WOzvv98/gWky6NQmlXJ00LlZSkTFxJTib1hT7PzOpvi2Uj3UQhxu519lTe29nn3R
 FGtT3XYT43FZo3BFQHxyg+mAUYc7bFOWL4Kk4ANIfllPu/Hp+Feij1RVqcZIqoH0rhBk
 /Yyd0Iw0yxFXZsMEB4UxgpAwAMU/pU7UOhZoAIzibYPkn+XBxkoaEtLGL8Ldp5BwmYSC
 xjJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=w2dLnl5hsLVKZTBAdcVFnDnMtM7+guW1LU+8LG4nir0=;
 b=0nNs378fyDmtUJtPnIVXA3YyOGe3IpFmPkNVlh2IfE2YgyJFkAmt4PSzr2FJHjdP6j
 zadtTdVM0/InZMngBCT5kCGCHdyTD8zmSDS42HUrPs64g3eOYRbEXeemguKSW8Y+9rIU
 9xt+ZAw6X1G978JVxv7KqoTu0GKSn5PJl8f3qNi0nAXFp1caddQNf/FXAptCKzfXHEIY
 H4wmFBdFvLA8+6fZtFFxZdoQ/Z67v6/7oU8brqQSx0bAAsza2LrBu4sPbUsvSrTRbCqW
 8Aa17SdJ8+txDReWwBJftfTjcsdMwEn2eqX4is7eIVs6coELfhtdQ+MiwPkm1baoMa85
 4BmA==
X-Gm-Message-State: AOAM5300Put8Irycm4Roh7Vuq/44QQNqHx0Ys/iOMVdmo7GmMK0dzvRl
 MKMbw/UnTJ85dqSAQ+FRumjnIETIZj2eENm6+3c=
X-Google-Smtp-Source: ABdhPJzrwFa7TFTqFvwFs5k0Rdhif8Z7uuK1FAOvH+K0kUx2WcLdYM3cuBXUcAo32aObeRSjQ/+f3OHahwiwxApMIiU=
X-Received: by 2002:adf:cd06:: with SMTP id w6mr16900697wrm.431.1637411526963; 
 Sat, 20 Nov 2021 04:32:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:f989:0:0:0:0:0 with HTTP; Sat, 20 Nov 2021 04:32:05
 -0800 (PST)
From: Mitchell Vivian <duplanmartine36@gmail.com>
Date: Sat, 20 Nov 2021 12:32:05 +0000
Message-ID: <CAO-XXH4jKctBjrghKocs7TkK4=OXKnJketarRZEG9rUSFpG4Ng@mail.gmail.com>
Subject: Hello
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
Reply-To: mitchellvivian01@gamil.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

My name is Miss Vivian Mitchell. I want to donate my fund $ 4.5
million USD to you on a charity name to help the poor People.

As soon as I read from you I will give you more details on how to
achieve this goal and get this fund transferred into your bank
account.

Thanks have a nice day,
Miss.vivian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
