Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC3F41FCBB
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Oct 2021 17:26:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80C29607C3;
	Sat,  2 Oct 2021 15:26:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QHZPK3LLfabA; Sat,  2 Oct 2021 15:26:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E67C96063F;
	Sat,  2 Oct 2021 15:25:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED5201BF38B
 for <devel@linuxdriverproject.org>; Sat,  2 Oct 2021 15:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DAED3401CF
 for <devel@linuxdriverproject.org>; Sat,  2 Oct 2021 15:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BHeUL2WkdLUz for <devel@linuxdriverproject.org>;
 Sat,  2 Oct 2021 15:25:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 99DC8401C3
 for <devel@driverdev.osuosl.org>; Sat,  2 Oct 2021 15:25:48 +0000 (UTC)
Received: by mail-io1-xd31.google.com with SMTP id d18so15115230iof.13
 for <devel@driverdev.osuosl.org>; Sat, 02 Oct 2021 08:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xQrYULKok+hL+AIRGJuG9CojAZcnV9Xr+it7yxQJVlY=;
 b=j3ZiwowMBBmRzvBmVCH3XKamqcVre6o456+AvAA1h4qZYRB3WuHo31G+M4sr4+/RIL
 6Juyoy2a0pcZHTveUzZBOaQxYgdGduSvLOQoMKpnlXyO6vGF90n0J5AKAWX3gxkxdLJX
 bXHT3USXMUVnYGfKIZU62MxUCDlxBGspokcP8oaWBftwjlAjt8QCIBP97+qryu6GtRDZ
 Hd0KRvBdSSWPIWe+1SNSqBCqEnDEr8KkGwIAYSub2eH2kB/4Mb4ParH1v20NDu0zrNUX
 B6JBdlUurmOjcqxRcSkKkAnZxTSZ7lQfzs7WPRIHvZwV/2ZHEVvfelCGPHwQCxVAaYjB
 n5kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xQrYULKok+hL+AIRGJuG9CojAZcnV9Xr+it7yxQJVlY=;
 b=EQiEMU0s0qI2GiIDh/NmfNu66tA7I/dGfKIdDLS4NDQXkLSImYvgBKgeOBiEkzJn/v
 YfJCK4YiIGA2K8onYfXwNLmhetP5uVGRlj4WFWIb0hWAmOEZ/pm2DMs4q5Jemym3DQ1q
 ZltTVtopQy5fLCxJz5nomDQSdRti26y3gSIwdOLtXi6ZpCwvk4rP8ZPnL6xYj8eHLqLG
 i3/Fi3Lua7wCVNw6zS12uaPWZYIFX7tW+0OxRUGvfZ0dXDSxeVRVYNzlNt//RnMKmHyx
 Ib9YpqK/xL0yBQ5C2E7bQMPtw3QSyEb0o017hiiWjrWuDGfp6lFXijOujFCXsJfuzjam
 p11w==
X-Gm-Message-State: AOAM532dF8WFqXRf+rqm/en0GWSU3/cHxtpddWwrRUPDevGdd78GW48h
 WAJuvP+99v/xbkHYH4ht03S1d4jZV7N27MX/UoE=
X-Google-Smtp-Source: ABdhPJyphnR2E16Y8GoebKs/1bd9l2xnNCJ0aNGdB1eFTqmoTC0JryF7tJ4Ap3lerDQnXVcR16D+0rpgKAKZAUp/lxs=
X-Received: by 2002:a5d:87d2:: with SMTP id q18mr2794341ios.78.1633188347654; 
 Sat, 02 Oct 2021 08:25:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad5:5fb4:0:0:0:0:0 with HTTP;
 Sat, 2 Oct 2021 08:25:47 -0700 (PDT)
From: Mrs Aisha Al-Qaddafi <gaddafia487@gmail.com>
Date: Sat, 2 Oct 2021 08:25:47 -0700
Message-ID: <CAJbXPF1=CuBvZ8iZL8S==O5-13oWkLd+9VBgMKMqP1TDSdyQVw@mail.gmail.com>
Subject: Dear Friend,
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
Reply-To: mrsaishag45@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

I came across your e-mail contact prior to a private search while in
need of your assistance. I am Aisha Al-Qaddafi, the only biological
Daughter of Former President of Libya Col. Muammar Al-Qaddafi. Am a
single Mother and a Widow with three Children.

I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country, may be from there, we can build business relationship in
the nearest future.

I am willing to negotiate an investment/business profit sharing ratio
with you based on the future investment earning profits.

If you are willing to handle this project on my behalf kindly reply
urgently to enable me to provide you more information about the
investment funds.

Your Urgent Reply Will Be Appreciated

Best Regards
Mrs Aisha Al-Qaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
