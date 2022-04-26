Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B128510751
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Apr 2022 20:43:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2830F41674;
	Tue, 26 Apr 2022 18:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6O_70-rxYiC; Tue, 26 Apr 2022 18:43:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B943841576;
	Tue, 26 Apr 2022 18:43:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0B461BF592
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 26 Apr 2022 18:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DDDCB83E43
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 26 Apr 2022 18:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FjpGHt4aDbdf
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 26 Apr 2022 18:43:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 525BC83295
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 26 Apr 2022 18:43:08 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id y21so16551102edo.2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 26 Apr 2022 11:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=3s1PAi7yaAKLLAwJqzdidADYs8xi+3Y8OeD8v9frsHc=;
 b=Wu39QhcpfDXMovEN4avB3rawmsVR6ZiIqSMq9O6qvFc8Yd9tjOAomS/LlaBWRGL8OC
 PPwo2lK9IkSbeRmfU5u765YmfhetaohKxFrESfqE42Q+obvds2DY4yNXlg40Je+DX5ZW
 mp//wvRCK7dTSJ4UoapI4sKm1wINfyv3jaXdSLbpgW0qCc5oTJMpmBYoauLFgH0/SGp8
 PR7IBNO+rLGBu4sBInUuwml1RUde7JyCeDZ46rvz9375RJYIx82QrhI50GkbI6R8knRb
 rKf3gMrEqOWFXQhHt87/RL95q/ozgyJ3s/Q1v93jcLL+4D7oGInWqJeeMeZi4YTrKvdQ
 ST5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=3s1PAi7yaAKLLAwJqzdidADYs8xi+3Y8OeD8v9frsHc=;
 b=1FMc9lB0MyAGxSxENJCbeaW7PFlSTPr60ukH7JYNthHK4wQ32qBGTbM2fMY9TQU79H
 BMvupsEXG7/qP46CHcvKr6mk3rE0tvJx/uYtmNAaLwRJyn4RpS+Rdr+kQDRjEoF9f3ul
 jGmv4xonqL1OCYrVdjItgygTFB9D2myHDBeFFYXKnFY5ixexO16dLVa6ULv8ESjteI1u
 SVEUetTFgeJdKLOTjjnKM7J0/o8nrTKKfGw5qDEdZi0BcX9v0jUYrfUxog/PjsP5HtxA
 PlX4MzKTpU0uKHLAtk+rThA9NCTCD0tLeVkygGpW2/6BLMxtG4LR7yuMHu7jCXPzrGGa
 KQZw==
X-Gm-Message-State: AOAM530cm+LDm0NDxh2w+ZMGVOJ7rbEWPD0/UOblWTrF4xBDhQF2uIVU
 cQhLVqTQEtDPU+6liMf+loO2P/8rvJMztN298ls=
X-Google-Smtp-Source: ABdhPJwRSHl8atTqPWqlkS7cUaDiNqOsM0HYGG8ENUNVH3zAjF6g7wlNrzJLoM8hrobtj1AEcbhCKLiDQ8vm19uMkfk=
X-Received: by 2002:a05:6402:2932:b0:425:d7b3:e0d1 with SMTP id
 ee50-20020a056402293200b00425d7b3e0d1mr17181555edb.141.1650998586419; Tue, 26
 Apr 2022 11:43:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a55:e401:0:b0:13d:c987:1b2a with HTTP; Tue, 26 Apr 2022
 11:43:05 -0700 (PDT)
From: Sgt Kayla Mantheym <barrjohnkodjotg@gmail.com>
Date: Tue, 26 Apr 2022 18:43:05 +0000
Message-ID: <CAMzM1cyo3uvqsP+5A+kpEyhekQ5ji=n+Ttn63cpZ5x8KLNu20w@mail.gmail.com>
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
Reply-To: sgtkaylamanthey50@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbMOzLCBob2d5IHZhZ3kgbWEsIHJlbcOpbGVtLCBqw7NsIHZhZ3ksIGrDsyBlZ8Opc3pzw6ln
Z2VsLCBtZWdrYXB0YWQgYXoKdXRvbHPDsyDDvHplbmV0ZW0/Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
