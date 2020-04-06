Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E52BC19FDF3
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 21:16:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD04B882CD;
	Mon,  6 Apr 2020 19:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 56Drb+qhjbNC; Mon,  6 Apr 2020 19:16:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E78088214;
	Mon,  6 Apr 2020 19:16:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D9D5C1BF3D0
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 19:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CA77D86132
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 19:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mp7flGQlBJ5T for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 19:16:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1ABEF860A9
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 19:16:49 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id g3so884170wrx.2
 for <devel@driverdev.osuosl.org>; Mon, 06 Apr 2020 12:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cE+iUtARfpAbpnYwGWN8p/sN84pPLlS+ycR4J0TYUCQ=;
 b=DkKPyYJ2bKe8zYPtX18ncU0y8AHIPNuwNzax8yDaWWL4wEqRWebsV/uUXCqHO8skm1
 Z0+UzgYn0seA9s7d2inQ5hWmrqGqK0iVy8G8s9VyLrZCJw54j0YgiU1bYstX9ijLe8a4
 k+d27rtXJQM8odL3AY1gqipxQo6KBriaMSU7N0CcWPDtD3VbGVwQueRsLhQ4BS0aQX1y
 yiJCtiTVIy00sfJkQ2xYJxH4BhHXwN2bFkGQ3ZoK6aQpCzgjywkEuBQa4jJCkNErXUMW
 gh5z2wFiUOeP7MtP+Qv2UZLX8gQiF/M43TFHTMBGZfXkbVz9p2y2UK0LXzYyzMMw8S2t
 S/1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cE+iUtARfpAbpnYwGWN8p/sN84pPLlS+ycR4J0TYUCQ=;
 b=CZxNmTpI0hgnItnZgtSm6lrFz25hgosRWE4htgjDc+3K5t2CDf8sd8oA5Q5tNo9sPX
 wi8dOgX3/eD0zLknfhF0dz7+xAX2iAysfENLSjUk/R0aOB/kKVT1fHCtPt4krhj9sGUq
 K4AZoSzhmOHrkKl8FPexbJ9G1v+dRus1Setfx2uTbGXib9e0wlmYaVqSMOBlmopO6ubl
 beYD7JK5WdtEhoobwVTVbvRwnCdLGm9O1l5fB+RAk1a2LWcQQNLfPcOb9EgWd2uxcaE1
 sHQVyD3YskYPgX1GerzOFQSNlxUutRxJEIpQEL0JQUDX/mmmsTdJGvVW5XP1ea17cchf
 rGVQ==
X-Gm-Message-State: AGi0PubpAJTTl3PI1I8z8SkHiiU6Us92wTdSVP33e5imoq/OzEv/KceG
 oRBf9fXh6rqqIkvIaDJGtu1FvVuG
X-Google-Smtp-Source: APiQypIlMP6ohQsalXMgRrT4k/Cpx1Lv+Y8XSStKRPrmW+TrbyLcYMr5wrP6CbP1v8DwJaJ7+s/USQ==
X-Received: by 2002:adf:f641:: with SMTP id x1mr770799wrp.239.1586200607593;
 Mon, 06 Apr 2020 12:16:47 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.56.threembb.co.uk. [188.29.165.56])
 by smtp.gmail.com with ESMTPSA id
 j11sm22431050wro.51.2020.04.06.12.16.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 12:16:47 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: vt6556: vnt_rf_setpower convert to use
 ieee80211_channel.
From: Malcolm Priestley <tvboxspy@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <6e9ffe4d-a651-d17e-ebf2-2bd6f766e6dd@gmail.com>
Message-ID: <02cdc49a-b59a-31c9-1f51-793a9a6a4ea5@gmail.com>
Date: Mon, 6 Apr 2020 20:16:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <6e9ffe4d-a651-d17e-ebf2-2bd6f766e6dd@gmail.com>
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Drop these patches I have just noticed a mistake.

Regards

Malcolm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
