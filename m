Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2401B85A2
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 12:26:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D853D8586A;
	Sat, 25 Apr 2020 10:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dob3-xyGTEna; Sat, 25 Apr 2020 10:26:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDC4A85187;
	Sat, 25 Apr 2020 10:26:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DFB41BF5A6
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 10:26:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 188CE868E5
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 10:26:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DIVzZxrmGN-G for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 10:26:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C4828610A
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 10:26:29 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id d15so12873833wrx.3
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 03:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=38vQVlaeSZZxQKTG5783RHBThukGsAZS9fXDacuiSmU=;
 b=Gtltwj0k57U62g3GeZY/ggJ/mqgonj4qLUD4I/84b2SMyKNoDqeJgn+5UvjjQOONUP
 GW0HTpsf8e4kCqutI5ZmRFpWyZEjlAEXYJ5Tab9bg9EsltOW0/+H+xTPibrRGazG4Lua
 hfU8xDNpSJLVh28JIz/mn5NIXR2sCLcHWBwouhMXi0iFjkGJSnM51FXntz8oT281viLr
 xTR+J1oor1Eq74xYVBYEbH17KiQveAWiFIC6KoGDcft0kNTJaTSACfOppnQQ/hvtYt5X
 KRtuVTMUjx0qn1402Z/Uw/g0SvySIr/oFOHy2xXe2dDxHhtUv+7DMp+Vzur+xHT/kegY
 H5sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=38vQVlaeSZZxQKTG5783RHBThukGsAZS9fXDacuiSmU=;
 b=MuBgL0BYq4yfRLa3of216112ce/FEqNAdkFgifhJgdFbd8gj/XUtgsIgR8Y1RdLs5F
 dD7RTHumBnQmednmw1lwyZZKO8lOzTuXQQdN6JLVL+kdk/aDleIltOYoWdLM0cNV78CZ
 FspG1tdnXADN9+M1xMUC4oK08CDJxO9PXksoMjRHYNja2C71NZmcLvbuDCuQir/7G1nr
 pk36Xku/XIu2dDfHFpS4TwpEFHbnPYMx57+JPFCxWeQlrr4nQdv0Pprsts6kmHQG4NU0
 Ir2wPOouvz3hs6q+ApYzRDueEtPd+GDkOx2Cll/KOAIoVvzqQfHbM3TswYKD8KuDMHxA
 sDow==
X-Gm-Message-State: AGi0Pua2OxfS24AAMMi91zWEBNstDFbxBNadXlDRhH3ZQbes3V/ioVsO
 eWcbizT4oOxkOwLPab5l1Cg=
X-Google-Smtp-Source: APiQypLKhIXBnlPPWWk/gKSpTt8Isfngp6z63ky08yVA/WfgmVJlqnu5se6FfXzXT+S3m4drxLKiOQ==
X-Received: by 2002:adf:e8c2:: with SMTP id k2mr16315312wrn.396.1587810387771; 
 Sat, 25 Apr 2020 03:26:27 -0700 (PDT)
Received: from [192.168.43.18] (94.197.120.138.threembb.co.uk.
 [94.197.120.138])
 by smtp.gmail.com with ESMTPSA id t16sm6533125wmi.27.2020.04.25.03.26.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Apr 2020 03:26:27 -0700 (PDT)
Subject: Re: [PATCH] staging: vt6656: rxtx: remove duration_id and void
 returns.
From: Malcolm Priestley <tvboxspy@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <7e44c528-2a3a-6a3d-0b47-0307d27a1c8b@gmail.com>
Message-ID: <d870351d-8d0e-9ed2-852f-90dcbae52bbe@gmail.com>
Date: Sat, 25 Apr 2020 11:26:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <7e44c528-2a3a-6a3d-0b47-0307d27a1c8b@gmail.com>
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

Drop this patch there is a mistake in it.

Regards

Malcolm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
