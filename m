Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3C0527547
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 May 2022 06:07:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10ECA81A30;
	Sun, 15 May 2022 04:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n4_jQcioGITf; Sun, 15 May 2022 04:07:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA32781919;
	Sun, 15 May 2022 04:07:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ADBE21BF5D7
 for <devel@linuxdriverproject.org>; Sun, 15 May 2022 04:07:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B96640182
 for <devel@linuxdriverproject.org>; Sun, 15 May 2022 04:07:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xy7qypmppyM9 for <devel@linuxdriverproject.org>;
 Sun, 15 May 2022 04:07:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED01D400D2
 for <devel@driverdev.osuosl.org>; Sun, 15 May 2022 04:07:03 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id e19so12284644vsu.12
 for <devel@driverdev.osuosl.org>; Sat, 14 May 2022 21:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=yy784MKRy8irqMbGMSPnH31MndL/meMTA9+5FT5z1a8=;
 b=dUauy/XVuaGjXXc1lb4jVWYMkga4XmHOaZYfiJBFOX4NBDmjz4KTHmxseGqLLBGwpd
 Nuj0vYyuz90s0FBOXUlzSNOk3GzieNopZNT3leJkP7cDweaWDE0hIoAo5WnNNAvsiYnR
 tT2wjKw+c5seJMK/z65zwVxpFhtIq1ONxGFOC9JaY0/s+OYpi8uvhDRhpIok+jXtNsNP
 HtPhBdyw+RqL+SYYOGrlaMt21zYuL6rbrvgWyF2p6IY3u4gQ+Izzc3Kd73/LLa+8dAiz
 F6KQKnJXgSBZPi05XfqxVFklSyT5cIEYjgKlVdpty/7ztBZPHiiiHaxnyPW7m/ZZfz4z
 lfdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=yy784MKRy8irqMbGMSPnH31MndL/meMTA9+5FT5z1a8=;
 b=cLXrMiEYcG3PHABL119gUau6+qIPdZe/gZADnXPwKglVc05NZpWRXEuanVKoVaCUYJ
 YgnF3Q2oZdUzM0+37vmjrTo6N89d85Ws6vDTzlnG12i1uWE3COq2/5ijqHDOrnKGPURl
 dK9dW+40FHhYVdod/CCOkKxMlcpFc23mtpxFBcja0IepEae6eK9l70RcDjiHdFPO8cbU
 PrnBusn1bDu/4CvyroSPRhEkVtFMqyKdsl6N8oQnH8RjMGFOd0TVZ87nU/rONLh+E8qY
 FKuReR3WITbj7RrRqeTILfcVaZnoqP0mQDZLl544EuQezikgLyP3RHp6wXEPohaHEvW5
 pYnw==
X-Gm-Message-State: AOAM533mXysscnHBWZhejisx867woxHccUMFQ36xO6nexqJM6flO7eBC
 +mp+gcyngoscz2ryBXVw6esBGp8aO3yFb/Ik3cs=
X-Google-Smtp-Source: ABdhPJz4HGls9b93pzCgOo2Rky+6m85SUqFRqxBrkV7jKYCMrYCDOvPZPmsJDPUqHs2RwOH/66d82CNUGZF5GdvFTq8=
X-Received: by 2002:a67:ce8f:0:b0:32d:15e:b749 with SMTP id
 c15-20020a67ce8f000000b0032d015eb749mr4703644vse.49.1652587622822; Sat, 14
 May 2022 21:07:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:e156:0:0:0:0:0 with HTTP; Sat, 14 May 2022 21:07:02
 -0700 (PDT)
From: Kayla Manthey <sgtkayla2001@gmail.com>
Date: Sun, 15 May 2022 04:07:02 +0000
X-Google-Sender-Auth: 495OgzXOKyvnGFht-eG_5mmhuYw
Message-ID: <CAPhVR5WLgf6Zt0qQ8L1spAHDdaDtUU4w4m=_q2AbVfW+T+rENQ@mail.gmail.com>
Subject: 
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCk1vbGltIHZhcywgxb5lbGltIHpuYXRpIGplc3RlIGxpIGRvYmlsaSBtb2plIHByZXRob2Ru
ZSBwb3J1a2UuIEh2YWxhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
