Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4E7532313
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 May 2022 08:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B63F60B31;
	Tue, 24 May 2022 06:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GyDaBGBllc0y; Tue, 24 May 2022 06:24:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA1E1605AC;
	Tue, 24 May 2022 06:24:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DDF81BF2C2
 for <devel@linuxdriverproject.org>; Tue, 24 May 2022 06:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A60A83478
 for <devel@linuxdriverproject.org>; Tue, 24 May 2022 06:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yeZer_Zj9PCi for <devel@linuxdriverproject.org>;
 Tue, 24 May 2022 06:24:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CA3F832D0
 for <devel@driverdev.osuosl.org>; Tue, 24 May 2022 06:24:21 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id e189so20362191oia.8
 for <devel@driverdev.osuosl.org>; Mon, 23 May 2022 23:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=+/ObZQdcudoKPi9EHyxehxS+g8fV78JSk4u1MMEObnU=;
 b=RR44NxNVKKLmj3pbyXoM1CSIBI0iMsDArtyrjYZZrDyy5OyzQvNc80LxqkfGEHndka
 gjhYIG1ZJbwEq9iVnQkoFg2yVSPDXVNW1dUrVjdvHCIBPGouki3Nb3C+iB/uwATJBkJX
 CUSpHUlYPbOx7pXc7AjgBIcCPqBB71TGGT93VGgXhXdhbSINcqTESbI4e7t2b46Hv7QX
 XDfXT97T8pyV3P0mZUVl6vtbFJdEGWo5f0pNmuKoP2s7X/5Oysu+Z1PwRDpej9IUhKxS
 3BfvRp3+i45+/KLG+hjN7gvTvm34eI+BHvcgwjgP98xu0+mx4Jw+PienXVDBWReFeCsn
 So4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=+/ObZQdcudoKPi9EHyxehxS+g8fV78JSk4u1MMEObnU=;
 b=u3pDqeg1hd41cQjX8/QCFlIt6jzBBn8TIJx8z2o6T9Lnta/jY2/TtddEIrAeVFf9RT
 ao5wFQz7B9IHVh+A7p9dQrJxoWPcGhhm3X+0bu/Og/lC67UB4mTUbjkvi9bXzjXsFpNW
 /Qn0dLttSvxjJNXqMpzdIYpuky05rihMuuf0oxWZRYswhXi/UOjBllBS3otseWN9XHG5
 NDZo5mQvIxYYFYMg2CoPFxHsOQOKIF1599q3gZDYAzb66ZaL4n0zJ40kPfKkzD3/NYUM
 mZ/O1vkkTmIgRX8qXAWhlqNt03K4ZLyYB0+eAzWQpAU7MTeBtom3natqjk7peU6raA5H
 pu3A==
X-Gm-Message-State: AOAM530lTjgYNs4Y1oZTgwGCxMbtCcLMlnJ43QB8vX/08ajOCzs6P5c2
 PhrJWwPmDCekJtwWqq1SlXh+agf8bxh/Wqmutc4=
X-Google-Smtp-Source: ABdhPJydXlyjP8NMal+g7MJmhuAeELXzNBplLBPqjCu+bvzd5b7CyvuLK6pHFoVrDuyy540GWT0Z+r0x6NOjkLKi11w=
X-Received: by 2002:a05:6808:3010:b0:2f7:3e71:88b2 with SMTP id
 ay16-20020a056808301000b002f73e7188b2mr1466518oib.102.1653373459709; Mon, 23
 May 2022 23:24:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6808:1791:0:0:0:0 with HTTP; Mon, 23 May 2022 23:24:19
 -0700 (PDT)
From: Martin Baker <ousmane.jahateh@gmail.com>
Date: Tue, 24 May 2022 06:24:19 +0000
Message-ID: <CAGjRiL+W+nTvX_Jud+TQe1KmZ4e+KCunHLYyp4R_zZjJm5uiNg@mail.gmail.com>
Subject: Hello,
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
Reply-To: BAkermarrtin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Morning Dear,

How are you, Please my previous mail you did not reply it
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
