Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8592F438937
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Oct 2021 15:45:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8D9C80E92;
	Sun, 24 Oct 2021 13:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sq_LRzz-kgBj; Sun, 24 Oct 2021 13:45:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EE9280E97;
	Sun, 24 Oct 2021 13:45:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 504251BF2F2
 for <devel@linuxdriverproject.org>; Sun, 24 Oct 2021 13:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F48E60610
 for <devel@linuxdriverproject.org>; Sun, 24 Oct 2021 13:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzm4CLuhM7SP for <devel@linuxdriverproject.org>;
 Sun, 24 Oct 2021 13:45:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A5136058A
 for <devel@driverdev.osuosl.org>; Sun, 24 Oct 2021 13:45:30 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id u21so7372753lff.8
 for <devel@driverdev.osuosl.org>; Sun, 24 Oct 2021 06:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=J64IZF9PVQr8R+mvV6ce9ekiJ1rmezsroOUDCf2tvvE=;
 b=bLyFCVOtdAnoJKNll//iuKqFt6/a6MwtTzBNnL+Hix17ONP6Jg99cYwId7QrY0rID/
 YJVad3fvQIGqiA6mFwaB4G1bu5loks76pg/9SzXxWG0/zJJtmsghQ2hcGNDtQ0wk09gw
 Mrpp8/j+zJZ/EEVp5HsWVA1F+BU0ixJbDSrPxnJ4l0NNLNWiMY2LMYGIHIdfZ6Q8sKVA
 SfNMKrqmVe9ef/XqJiCehTTGqY/e1kD+c+z1YGgi68+19oHiJ+QY6AvtVfazhz9LODnV
 YFccRe75kb8x2r4UMKtktyptjINM1pR7470WxLhlw/DhrReOoTYhRhoJt2zIqYF/kC2Q
 zmuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=J64IZF9PVQr8R+mvV6ce9ekiJ1rmezsroOUDCf2tvvE=;
 b=T3Z7zl62m3V2xf1qDW1DbEeqL5MSoa58D7/rzDEQRqHwYUJiDeLcROaTU7ghAItH5W
 fU3A15G2Y0QcLFYHPByV8jsHaeGRUl0N+vcx59MtfnAQ4klUa9OW+rqXWuAZs2lDq7ns
 1AIwsktLanVjxE+mFSQpI+wwlvo5eWvl4SKRsSeMxOamB6J8uX154+tOgHVhbUL4SOMj
 Kby0aBdCljPtq7oc9WTG8618I96qGlVLfVKg/ThhC2vziGgd257n5V0nTCByj9dGmBKo
 eCgdgID+C+dDw/MSCjJ+0xradmP13RowzAVq73D0nL4fAW/rxlr+0pHbthGgiIQ+Atxr
 2fSg==
X-Gm-Message-State: AOAM532b6hYrfDnhBLyRMXwX14JzW9cIDQX0/o+ZEZIvmm02HkoPX097
 J4mg8NTb6jbBxYiQR02KuJSTKS4P6ttU1rYJXg==
X-Google-Smtp-Source: ABdhPJx8VEx22ED+Tt44ieVEg4W5+GMTCiJC9Ie/t9PvfvQ53xy2z43wUeRHGPq4N85vxe59cEo+OIVFMWETxSyYEzY=
X-Received: by 2002:a19:e00b:: with SMTP id x11mr10362764lfg.87.1635083128350; 
 Sun, 24 Oct 2021 06:45:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:8e79:0:0:0:0:0 with HTTP; Sun, 24 Oct 2021 06:45:27
 -0700 (PDT)
From: "Dr. Joseph Mark" <josephmark00011@gmail.com>
Date: Sun, 24 Oct 2021 13:45:27 +0000
X-Google-Sender-Auth: okOrtKjSzfiVf0PWhQlcdZ6S9MM
Message-ID: <CAPRrOZN_n+Uk=deCGjs71cFRnzJOXRLNZ-e=ngjSXkL280rnnQ@mail.gmail.com>
Subject: Hello Dear.
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
Reply-To: josephmarks20201@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Friend,

I am Dr. Joseph Mark Work in bank. I Discovered the sum of seven
million, two hundred thousand dollars (usd7.2) belonging to a deceased
customer of this bank the fund has been lying in a suspense account
without anybody coming to put claim over the money since the account
late owner from Lebanese who was involved in car crash.

Therefore, I am soliciting for your assistance to come forward as the
next of kin. I have agreed that 40% of this money will be for you as
the beneficiary respect of the provision of your account and service
rendered, 60% will be for me. Then immediately the money transferred
to your account from this bank, I will proceed to your country for the
sharing of the fund.  If you think you are capable and will be
committed to making this deal successes send me an email as soon as
possible to confirm your interest.

Yours faithful,
Dr. Joseph Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
