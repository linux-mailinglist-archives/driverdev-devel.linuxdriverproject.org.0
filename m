Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 432B54A9D9A
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Feb 2022 18:25:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6BBF60BF2;
	Fri,  4 Feb 2022 17:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s8yvD95yrhN6; Fri,  4 Feb 2022 17:25:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A91660B77;
	Fri,  4 Feb 2022 17:25:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D78271BF368
 for <devel@linuxdriverproject.org>; Fri,  4 Feb 2022 17:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C015841682
 for <devel@linuxdriverproject.org>; Fri,  4 Feb 2022 17:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ewSuXkIzw9Uj for <devel@linuxdriverproject.org>;
 Fri,  4 Feb 2022 17:25:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 371F14167A
 for <devel@linuxdriverproject.org>; Fri,  4 Feb 2022 17:25:10 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id y3so628123ejf.2
 for <devel@linuxdriverproject.org>; Fri, 04 Feb 2022 09:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
 b=goQCqnV174gDCyUF5kNQHZbIABzGD3Dhwhr24OecfipHfbFaJKeKBRHu0OPgXG08G8
 A8uml6jkoKfoaDED3WDlapp9NGJDZe9VdwjRbKrDFAmcRg3odHwO7cXj7g9uz3huiNrI
 scxWmHdT5uYZ31YhRVTrV0qCakIbF+b6XfGDlIsoPpBAyaixk+R9uRQ6jS21um3GduIv
 n/LVeffrOFvIutLa/kfOqtdugb03P8gOkrMDRiLO95At2QbmOyYlhKZOaBiW5blFD4HU
 cOTZVBbbeCUUYAVd7nCkDkVPx6kVF05kptC9tOwFAiuB3dN8jM1dlbBXyXR1qHUku9uU
 RZeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
 b=zCmfigvNIy2yIZJ8cR4Tn2nixuMzk++W00yndbHlfCrwGizPonfq8b2yzWYLYbtomD
 CAiR7L+5EV6uu64xQcNjocpICojZaqWqc9dZI+YBX/XkLJj0vRZMNULGKG7iSNo3t2FZ
 tqv93iA7GiA41PVymAwWmOk10MFyQnfeUXBOpSoUtGTJQcpW0Y5hYV5WbX4g8w/rgoDt
 drlZfMyY1eXfr1H+MAYsv2xX/+U6HjbK0apKOGOIavHFLjL6MVWY8jhPxnTxJEJBz8dG
 HFvx6YcMVtPAsBvgKkoktFAGKHL1mxpCpLr0b+HblUlRaFTGPcdztO/ucUFK67ynHG1T
 tD7A==
X-Gm-Message-State: AOAM532SSF6WCcHzfzjmXAnABVf8qQYg7MRss14BVG5iAWZBUSofkHca
 1nnKFv8PHJLC5a9frL0KJssoaaje7qgr+yG91pg=
X-Google-Smtp-Source: ABdhPJwX6EYADVUHcSp7OcitY7HVZoN/SuCKlbsgu3TAxLdYcaLRGyiMN4vfHFOJ46yW1Rck5yzKZqNJtRRdHtB9NXQ=
X-Received: by 2002:a17:907:7f87:: with SMTP id
 qk7mr3347418ejc.748.1643995507804; 
 Fri, 04 Feb 2022 09:25:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:1758:0:0:0:0 with HTTP; Fri, 4 Feb 2022 09:25:07
 -0800 (PST)
From: Dr Ava Smith <tracymedicinemedus1@gmail.com>
Date: Fri, 4 Feb 2022 09:25:07 -0800
Message-ID: <CAFOspTZKph2mF-DRrXcFs=Ue1MzmaW_GcQb0Hjk_2AHE0frJzw@mail.gmail.com>
Subject: From Dr Ava Smith from United States
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
Reply-To: avamedicinemed3@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello Dear,
how are you today?hope you are fine
My name is Dr Ava Smith ,Am an English and French nationalities.
I will give you pictures and more details about me as soon as i hear from you
Thanks
Ava
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
