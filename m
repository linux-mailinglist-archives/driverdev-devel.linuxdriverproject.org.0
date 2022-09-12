Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EAD5B5849
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Sep 2022 12:27:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4ED6418DA;
	Mon, 12 Sep 2022 10:27:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4ED6418DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EK-rhSOwe0wr; Mon, 12 Sep 2022 10:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8B82402E0;
	Mon, 12 Sep 2022 10:27:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8B82402E0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F3381BF41D
 for <devel@linuxdriverproject.org>; Mon, 12 Sep 2022 10:27:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A80F606F2
 for <devel@linuxdriverproject.org>; Mon, 12 Sep 2022 10:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A80F606F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZNBukchvYSb for <devel@linuxdriverproject.org>;
 Mon, 12 Sep 2022 10:27:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9891460671
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9891460671
 for <devel@driverdev.osuosl.org>; Mon, 12 Sep 2022 10:27:38 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id e18so620412wmq.3
 for <devel@driverdev.osuosl.org>; Mon, 12 Sep 2022 03:27:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=ddKdS4x8c4ZSI9PbKdla4xMHlbecpUYnHnf7KqPY/v4=;
 b=0nPhYuJynprphO/DGv3b0NJnY8szaEvLyTtXxqFITMlxxIrmXIva1NDdtY3HP3lvWL
 DuUpg2LHZpVZgqRxi4BUL1mLzC/kMNomAsvEGU0IulxkZB7EghqQRE0VEryEMwzwFodr
 XZAuOp/PUs/MkQeq3Zed+ZtOIAPdTfK7jLVZ0vjA+kZmXBwtj5thLwWKbxo0DVqSjqkG
 MI6FDbVSmVVB0/M/qi1DMkzNvyX6bRUaCNXB0KvjRlj3FBqmhrfMCyeYLCUaTI6DO1uZ
 aTtzfcFdAMqalDvS03aywBfI5SmY9in+VADOmp4riy9UmhN6vZjbIzmenIePXvZMj+TP
 SLNA==
X-Gm-Message-State: ACgBeo2T5vhohSOINZtGaNy2ElaULH51goW4ZQ2mq7PdHuv9fd5FftQN
 QcI7h0HI+IqWaRL2dxucwk3Mn4EGicdZ77C7vII=
X-Google-Smtp-Source: AA6agR60FFRIBDe5L9ZZF/w2weaJvpKeuutx2jJ3/y+HrDmIEwCMZqxh+Cxp0udAYNWGpm7eLG9OECiRnWNZVXMkdeM=
X-Received: by 2002:a05:600c:3d91:b0:3b2:5231:3d1e with SMTP id
 bi17-20020a05600c3d9100b003b252313d1emr13379722wmb.174.1662978455103; Mon, 12
 Sep 2022 03:27:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:5a06:0:0:0:0:0 with HTTP; Mon, 12 Sep 2022 03:27:34
 -0700 (PDT)
From: susan Bikarm <susanbikarm54@gmail.com>
Date: Mon, 12 Sep 2022 03:27:34 -0700
Message-ID: <CADkw6OqxS058W_=r49D-312YnN0kxyDddO6B5zWwL0+oTVSkqA@mail.gmail.com>
Subject: Waiting to hear from you
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date;
 bh=ddKdS4x8c4ZSI9PbKdla4xMHlbecpUYnHnf7KqPY/v4=;
 b=NaD2lPCXe1uvSZiGU6ceFJBH4JjPqFUvguttYIZ7I4H+S9z8MWDo5axxy3h3/9H3Hp
 C8CQvu4iS+y913IFcdu0GnupamkQDLOidrXfY01UBb+xEA9YHQBG5e2xJ119BwBHovJp
 5hHOwI4nD2Q76E/eqqVp1quxNBwvfJcmDx/MMK4E7txZTlanyzxMoQbQ42RKmGt01nmM
 tsZXe4AvBOLsBVKf5ITQQo9IBLGZlaRHtDagC4i9c5l9LZ4qkS6czzdh13pwdJq6ilB0
 XPzdfvUcOMAYRiF5jo6iFSYZo7ZVqxaOwU9F7kwdnpHl1ZyhKTae3zBtQD7uO3+TastZ
 kGyw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=NaD2lPCX
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
Reply-To: sb9174937@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear ,

Please can I have your attention and possibly help me for humanity's
sake please. I am writing this message with a heavy heart filled with
sorrows and sadness.
Please if you can respond, i have an issue that i will be most
grateful if you could help me deal with it please.

Susan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
