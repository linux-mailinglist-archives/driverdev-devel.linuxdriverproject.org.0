Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 099491A5E19
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Apr 2020 12:45:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADBDD85F2B;
	Sun, 12 Apr 2020 10:45:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TNgLv6uojB-E; Sun, 12 Apr 2020 10:45:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD74285E79;
	Sun, 12 Apr 2020 10:44:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 468371BF5A9
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 10:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 40F932042A
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 10:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y4Nfzf+lmcdK for <devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 10:44:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id BB04920034
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 10:44:55 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id d77so6855815wmd.3
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 03:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7ooRMipQkQ5yE3CsfOz8ve+utn0iksaAuNVYdxZfPtc=;
 b=SD12RIoAK3m413gi8XB1IR1qDFg8H1beaaHOHj236R6zwCyvwvMatH1O3/DoRyw0gI
 xivSrmXtGVSbbLWRnNwb+bNHCafOrJFpFceCeDefTilWCew67PlZEly3rNWE2OWodfSC
 +K0Om/FJWfAlEj8m4fu3agmTDEzvbV1p5PTjpUPxPXF6nkBPVk4QwFre6HOqWdLgPx08
 0/29eFJixcdgRq8U3mt0JXhY3yUWeM/kxS2Y3A7xxWCTgMV0ZgejabmYj7BhYYnrcQmC
 nj+EbaA0jwhDIYxPRbwpnoIKyNT9JHw9sufTU8UYEZW7g3xYg0cER1DvybsnP6wnRQvh
 UOFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7ooRMipQkQ5yE3CsfOz8ve+utn0iksaAuNVYdxZfPtc=;
 b=O5O17wNBv/40w5s8izoCZzeo5nTHA9/Uyc9QKCUHzLZWXa8/Lwfwzh8NueBAD+o2wA
 L63SfCnmfWDZBl1skmsp8sXXdM3NRT0gL+HjqwhPk37UFMW81kc/NiIIyp+TFwJaO8uU
 Ez77qpAjcNcp4soS98gZuGSwyVECa9zD6hk16Lm4LoMpV3QxuxLMTJogiTVKloVaeI41
 GVy66COze0NyQkalsTHlgtmLs3aVHvGEBnfpRTXMfHHGf8jD4b2FhkeepHxXqstujGLM
 P2ABUxqLJ1htrJl5qADUDgXuAWK05dRZdsCtUqX13FZxWbvhBE8FqY9CDPN1WtqBRpaP
 UuJw==
X-Gm-Message-State: AGi0PuYGfP7EiabIBZKRafQVSx2EzXx3KPeyTzIQ1EX+YBmOjOufecDj
 32O7P48iUx7hGssUYzsMIUw=
X-Google-Smtp-Source: APiQypLeICqc1ka+I+wo4sQJAkgzOo9B3pTSfS9DNRlcDThyr4FG2pkHz1VtfbAYdrGVuGK18jOb7w==
X-Received: by 2002:a1c:750a:: with SMTP id o10mr13468014wmc.124.1586688294309; 
 Sun, 12 Apr 2020 03:44:54 -0700 (PDT)
Received: from [192.168.43.18] (92.40.249.57.threembb.co.uk. [92.40.249.57])
 by smtp.gmail.com with ESMTPSA id z3sm9645510wma.22.2020.04.12.03.44.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Apr 2020 03:44:53 -0700 (PDT)
Subject: Re: [PATCH] staging: vt6656: formulate rspinf values into tables
From: Malcolm Priestley <tvboxspy@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <311b59f0-4098-b5a1-6a50-53568b81377c@gmail.com>
Message-ID: <9e1475f9-8d74-7e7a-82ad-2441880fad77@gmail.com>
Date: Sun, 12 Apr 2020 11:44:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <311b59f0-4098-b5a1-6a50-53568b81377c@gmail.com>
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
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Drop this patch v2 sent

Regards

Malcolm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
