Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF75018E1A9
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 14:58:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 811FC86241;
	Sat, 21 Mar 2020 13:58:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FVMlQ4HWeq7C; Sat, 21 Mar 2020 13:58:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A01581B19;
	Sat, 21 Mar 2020 13:58:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CDE3E1BF28C
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 13:57:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA69C2041D
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 13:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6J+VQb9akgwa for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:57:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 0FF5420410
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 13:57:57 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id r22so2503294ljh.0
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 06:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=HXE6tstiCEJgLEvZqX/al+c2Uj3U9XPUohG/1iBPeWI=;
 b=X3/Slb+n1m9ZGv8FfbKyCrREaNSRUoaVWebpkukTpu8bn5cRVSxxMuxk+OJCvi8jZ/
 l9YPhAzmSq1mfkeSDV8E4FPMu7XQ3Q6whk4XWzg3DiA8OjdED5wTnRvx+2y2/yuGj5jJ
 qt/Tkl53qxxwi7ap72EiZZMxwbKqnnVgl7gGnRwDNimZYRWLflK/eaWrEhJsGliEBt0p
 /K1x18heADZaIqqyLZwLprpR17nQ3GSohCFLNbU4iEYpqDG440gRUvUG5eHV/ii/FgsP
 k810B6KHaiHDpaZYnqsqVe5L7QDeps58iKMw1JYNzLgoRvgC57wvbWtnwN7u0MdGNhOV
 ++SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=HXE6tstiCEJgLEvZqX/al+c2Uj3U9XPUohG/1iBPeWI=;
 b=EM6yvDAXTZOsFQMCKFzmDr/pXH+uOVc3AWLlefQeYZfLa4uCj91WGYwZ2cyq5sFR+J
 4eXoiXcVBV7CvON+l8Hj4uZfNfcTBlMnOROReeo6jodCuK3Z1uYu3TF/k8n7NGOywk0u
 /ha8nczsjtPpRR/hs0sGWDpbBAHO/N7cNrrdZRCleWtYLDgWHczClnQbIDpzVvhpTOnx
 MDvq7zGbSwq/ickFWuFT4Q/hANH6TeApzf3z3MWe09/ZhOy2N4prLjTLSTWYUYz8nhxn
 DGFGIQwpxVlRgiV37dN+5Bw2mXapdG+hs1D8tL0ta+H25Iw4qQA0yH7CktYf0rB6wQEm
 u5pA==
X-Gm-Message-State: ANhLgQ1ijKyO9E2KkbcWzwsI5b4jI+XFsEjbtIg0ezNDH7HR716twFjD
 mvxBBunanODV8G9IiN/VzjEBrMNwa25Uu9pU9Ow=
X-Google-Smtp-Source: ADFU+vvxbycw8yR9AOGcVv2pQsLm/g6dVuKcZ5koIo9ODpGuN7gAiDq8marHUEfAKZwymEbTTjoTYWpjIfykZaydkoQ=
X-Received: by 2002:a05:651c:1114:: with SMTP id
 d20mr8311937ljo.103.1584799074660; 
 Sat, 21 Mar 2020 06:57:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:13ac:0:0:0:0 with HTTP; Sat, 21 Mar 2020 06:57:54
 -0700 (PDT)
From: Gabriel Bertrand <mailfedextogo@gmail.com>
Date: Sat, 21 Mar 2020 06:57:54 -0700
Message-ID: <CAKXLyT4HmOO_T1AkvNYYufNfpXLwrzoF6Pd3PT3B=W17Ufxt1Q@mail.gmail.com>
Subject: hello
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
Reply-To: begabriel6543@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gDQoNCuS9oOWlve+8jA0KDQrmiJHluIzmnJvkvaDlgZrnmoTlpb3jgIIg5b6I5oqx5q2J5Lul
6L+Z56eN5pa55byP5LiO5oKo6IGU57O744CCIOaIkeWPq0dhYnJpZWwgQmVydHJhbmTvvIzmiJHl
nKjms5Xlm73kuIDlrrbpooblhYjnmoTpk7booYzlt6XkvZzjgIINCuivt+ihqOaYjuaCqOacieWF
tOi2o+iOt+W+l+mBl+S6p+WfuumHke+8jOivpeasvumhueWxnuS6juWcqOS4jeW5uOS6i+aVheS4
reS4p+eUn+eahOWkluWbveWuouaIt+OAgg0KDQrkuIDml6bmgqjooajovr7kuobmgqjnmoTmhI/l
m77vvIzmiJHlsIbkuLrmgqjmj5Dkvpvmm7TlpJror6bnu4bkv6Hmga/jgIIg56Wd5oKo5pyJ5Liq
576O5aW955qE5LiA5aSp77ya6K+35LiO5oiR6IGU57O777yaPiBiZWdhYnJpZWw2NTQzQGdtYWls
LmNvbQ0KDQoNCuaIkeWcqOetieS9oOeahOWbnuWkjeOAgg0KDQrmnIDlpb3nmoTnpZ3npo/vvIwN
CuWKoOW4g+mHjOWfg+WwlMK35Lyv54m55YWwDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
