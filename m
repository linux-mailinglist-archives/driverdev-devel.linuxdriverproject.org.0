Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 908846D7C42
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Apr 2023 14:15:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC308402E6;
	Wed,  5 Apr 2023 12:15:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC308402E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J_Bya_n8GNuO; Wed,  5 Apr 2023 12:15:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D20A40071;
	Wed,  5 Apr 2023 12:15:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D20A40071
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD9521C2A1A
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  5 Apr 2023 12:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8515E402E6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  5 Apr 2023 12:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8515E402E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mO-q1-vdjhOl
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  5 Apr 2023 12:15:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E45540071
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E45540071
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  5 Apr 2023 12:15:41 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 h12-20020a17090aea8c00b0023d1311fab3so37060160pjz.1
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 05 Apr 2023 05:15:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680696941;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qMEHjBTZzan4JuHT0jfb0YK3jTS6Z7z8LYFKdXfO+V8=;
 b=2WtCCsX/M1LZ2xjMi5rVLGqEz9Jt14OHxsXXv/E3gY1ZMGfzYs4vcqyWqS6okmhGD5
 ydp+9+58o3+Ldwn7qBlOgv7ul/wpZxHCzupmdEEVF6RbIgwgbirAq/bjDJyu/ejwfpLV
 4qOB8LzJR8BtrwBZ38K6RRSiQFeHDa6na14LFfitSEgNAws6qSCurVH6anJKckCcoe+I
 KwZdsAYmHJpsYZGeLCuGZWGOMpw5G4h7PBS2LXPdQSwtktkEfH6NRqwRiwjwpUd0IHjG
 ZOymOSzE7RBIBvvdJx1knck6NO+xJ+8BcoE3Y5ceXnMeatUb5f8qbkF8WGbU/nXo4c5Z
 wTCw==
X-Gm-Message-State: AAQBX9fYtpzVE3xswtDAesLn7yV3Hp3CRgCe9fpQmdrfD8k7xjjl9idj
 5pitj+BSBhuVZC+YMZEX1QXgPacs0Xqd49KaRbI=
X-Google-Smtp-Source: AKy350Yknb2raFEELzy28sobWDqnfr+oqETuh9e33uDtbLA95IPJ8hu6lIn9QBtFmrAEQzk1PtBDvLMoyC+jrhBC6s8=
X-Received: by 2002:a17:902:a70d:b0:1a1:ffc6:de9b with SMTP id
 w13-20020a170902a70d00b001a1ffc6de9bmr2350800plq.6.1680696941087; Wed, 05 Apr
 2023 05:15:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a20:1b0f:b0:e5:c310:ef56 with HTTP; Wed, 5 Apr 2023
 05:15:40 -0700 (PDT)
From: kala manthey <kaylamanthey650@gmail.com>
Date: Wed, 5 Apr 2023 05:15:40 -0700
X-Google-Sender-Auth: VLX6mBOCfOOlqj2MLBm2o_IKIAM
Message-ID: <CAOMnuLyjws8YHJFdbg78S3-X6cdTH3vNLmPU3q__vntq0P0Qyw@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680696941;
 h=content-transfer-encoding:to:subject:message-id:date:from:sender
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=qMEHjBTZzan4JuHT0jfb0YK3jTS6Z7z8LYFKdXfO+V8=;
 b=ZIvBdsNH3Q8OrY93rWZ+DFuYHDtW5II4vBWXOL95g6Jwn2Wd4WnTQaLJZXpfGmDYN6
 khQoY16nUkP1vlzo6xwEHQ/NwxtaDTqhqyHQ9LcvLWP7OhQM0gTZezaoJn8ESR3Fdcjg
 Jyh02yBnC3urmwjxCEH3Zdti2j2uGx/yQDCju8vjfsZBx146PP/JnfKeleoYmJm2Qxop
 RwxEvpLQs/tPzcTiiWgI0dCko17wlT2FOa/m36vGz0bQ0W/o5mr1l0oqZWuntSN3QA1l
 VtahjkhhvZtauUD4OBHV7buCRqQgTWNngnUNbBOnzbA/h47FxKZ0oxd9cBfg5pUxBpXE
 Lt6w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ZIvBdsNH
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

c3ppYSwgbWVna2FwdGFkIGF6IMO8emVuZXRlaW1ldD8ga8OpcmxlayBuw6l6ZCBtZWcgw6lzIHbD
oWxhc3pvbGogbmVrZW0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
