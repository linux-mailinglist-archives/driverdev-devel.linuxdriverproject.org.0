Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EA9205257
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 14:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D297F895CE;
	Tue, 23 Jun 2020 12:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P3HyfWaqQRzv; Tue, 23 Jun 2020 12:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F7C88959E;
	Tue, 23 Jun 2020 12:24:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B799E1BF3DA
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 12:24:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B46AE8959E
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 12:24:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2m+ch1THSjcS for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 12:24:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6F36488321
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 12:24:13 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id r12so2990328wrj.13
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 05:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=7fNnQnFssZCc2Jtw2cUlJB4v7zrpRiQS682aXMZO9+Q=;
 b=vOr+Oo9MwFBrRAUaUoxdBgWPCBzBsxsRP3apEyJV0Vnnq79iE/3z6jy4N2vBXQXnBp
 IhX+63a2dr+0a1i3rGJfhsAYbOAp96lIS0xKh7GFL0BxgjZQytOW/GouU/vO3hBZNZm7
 f+qg3/igAr1VaIBOQZRMmde8gNxvHYg/taH8LOtWMPW1krKsf151y9C32dhGDBRBS6rX
 kb2oBjagctsm9tzbKRvD/P1oA68DgzrhbB5ljzkzfjLEpz9d3ZYZ0A2FWKJrP2BeViHq
 8XFlXY1QNsU9NKdlbx0koyoioSpaMmK7vyqKc7QGf4nTQ1XwDY56qpbEhw+Q80nrvzdi
 XdxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=7fNnQnFssZCc2Jtw2cUlJB4v7zrpRiQS682aXMZO9+Q=;
 b=EEfrwm9vrth2uhpzck+uLsKN4strYVflXr65SjfS/QrYmAtsEirySwbPasMkN63OD2
 Bh8n/c0KM/oAagKoAlTT23XwtC6+17bfLs3PTidWA5wRUncJUB2Z4G/031mHZDI6T1sq
 8nPjd9h3q2SPO610SSmE4kj2R3p0ZbyQnUL+n6fQ+LVDKXx68QhOWuWyHCViDdUcZpts
 sakeqiZiwJwgkK5bG2TBh1SzkgCIW7EPvpycLZB/q5eDHVi13tmcQJHLcm5qdyE/vwwe
 uf6J9UuWIVkem/q1qgL2nIFZqS+fiacDd8gULcqkWb5sE4/fEkXwbC3+x4okFm1uGNvt
 ngTQ==
X-Gm-Message-State: AOAM530Utm8zg+ow6sn+MzwllzjhqyJYa2wQWNkyCuGgtMrWdqFJuSNN
 2GvN3rk8R5GD9MubwhmQDKI0iXGOE4bg03oP8rs=
X-Google-Smtp-Source: ABdhPJyydCFlQcZXK0anIWZmwfGGzXtcMctrDGmMlljm+OXF12iAv1j8DpSJGBRiGzIyA5k/3X/xLhk5/kw7ZYi7S0E=
X-Received: by 2002:adf:f18c:: with SMTP id h12mr23951488wro.375.1592915051779; 
 Tue, 23 Jun 2020 05:24:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:42c4:0:0:0:0:0 with HTTP; Tue, 23 Jun 2020 05:24:11
 -0700 (PDT)
From: YAVUZ BEKTER <bariskamx@gmail.com>
Date: Tue, 23 Jun 2020 05:24:11 -0700
Message-ID: <CABZeqGfWB8RMGGBsGxRB0iXMU9NBSD6TXEKgBRFrr-PvuFNJ4Q@mail.gmail.com>
Subject: Hello.
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
Reply-To: bektery@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I am the foreign operations director of Bank of Turkey.
My name is Mr, Yavuz. I have a sensitive investment project to discuss
with you, please reply now.
________________________
Ik ben de directeur buitenlandse activiteiten van de Bank of Turkey.
Mijn naam is meneer Yavuz. Ik moet een gevoelig investeringsproject bespreken
met u, antwoord dan nu.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
