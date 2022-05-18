Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4649152C5C2
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 May 2022 23:51:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9085842B0;
	Wed, 18 May 2022 21:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6kiNlqSnvEas; Wed, 18 May 2022 21:51:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AF0D84327;
	Wed, 18 May 2022 21:51:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C8A781BF9B2
 for <devel@linuxdriverproject.org>; Wed, 18 May 2022 21:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B78C260DC2
 for <devel@linuxdriverproject.org>; Wed, 18 May 2022 21:50:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RgK7ydrjatLl for <devel@linuxdriverproject.org>;
 Wed, 18 May 2022 21:50:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 43C9360B45
 for <devel@linuxdriverproject.org>; Wed, 18 May 2022 21:50:54 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id b20so3007691qkc.6
 for <devel@linuxdriverproject.org>; Wed, 18 May 2022 14:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=675CvuSp++zNLeIUZybBsP51nvc83dY+2bSGb3FYErQ=;
 b=IpvzYC5pcIGvtds/3PwlfXeQueb7dzZoQfrTDI8pqDf/efxw0ZLiR5IPj+HHSD7uYt
 ZrDK/tu0XZN623VWnyt5usXiFOO0NQjy8GQDdComHUTKl8RXYneinZm2/Yakdst1WufV
 OAsFZpgp+jr6fgb0NNh24ymxJv7rgZIcTBrXQIpGywmO1bGQqsa5G0CyIjYyMjuj16df
 qtCHRyohmcIzsCbbKyVj4g0uv74JjWz4I43zHtfQJt1g5d1qTlu38zyOUvYfGHNhW80y
 bToehgxBPuwsB5WPsG94CImJ0RcjTY/d+yXohLvPhofMfGy5aU8Aqz0plOFj6cCwotBU
 xrZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=675CvuSp++zNLeIUZybBsP51nvc83dY+2bSGb3FYErQ=;
 b=vM39u8ITDRZ63eL1hBKE3YhmgFhvHWOWli/wmxT1IrqpPeXkJ+Aw+srpHS+05Gjj4C
 6hRiTw17VOcBHbNItMR9wi41u+dkTDO1uUN1zRylzJOZSpea4U8Of/XViWMfL6E0BBdS
 sdSS0m/713jGT6H8UgzPuoX6zeLHrRgznEfV7wfpYvc5sIZSBkLTfMhX0kXtcWuIHwGQ
 hRyidy0rqV+GakiwuRqOoQgQJkhyJnpU6e+Lv8b3wjrkSBbSoZwnsyHWMElto0L57Ax9
 zp3rbGC4qFqP0BuGuBTwOY0031R8kvApWZF0QVjW5SO3yj3iwcGMsZ8A0zcQxKThy6cT
 lucQ==
X-Gm-Message-State: AOAM531nZ6w9jhAyK8KF1NSVjFxzkc7diyiQNK3r6JVzN96ySgj8QdrT
 juffOBfOZZ6fmKCCwhSvm9naA7XyfWgx650s9FY=
X-Google-Smtp-Source: ABdhPJyodsPG6UkIlbNopEZrYOEiEZ7/6/rQZqhkip1EYUzO5OMpC4hk6J/uWybTYzbterQqKaJxn0R0lwjv7lG3Hyc=
X-Received: by 2002:a05:620a:4108:b0:6a0:3966:d30 with SMTP id
 j8-20020a05620a410800b006a039660d30mr1184304qko.672.1652910653066; Wed, 18
 May 2022 14:50:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:5cc1:0:0:0:0:0 with HTTP; Wed, 18 May 2022 14:50:52
 -0700 (PDT)
From: Tony Wen <thompsonmiller942@gmail.com>
Date: Wed, 18 May 2022 17:50:52 -0400
Message-ID: <CAN7gJ1Q2ZLHr5NkKU6AxYe2SfRS+=1qj+1rw6h1nkxT=Z7Zjmw@mail.gmail.com>
Subject: work
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
Reply-To: tonywenn@asia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Can you work with me?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
