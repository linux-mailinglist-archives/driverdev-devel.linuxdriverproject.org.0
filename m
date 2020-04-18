Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A5B1AF309
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 20:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1FB686591;
	Sat, 18 Apr 2020 18:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ocx4veEQ5tA2; Sat, 18 Apr 2020 18:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE0E3861F9;
	Sat, 18 Apr 2020 18:06:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4967F1BF3D1
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 18:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4359D2046B
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 18:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id auoux3E9dRhI for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 18:05:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 2F3B82047B
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 18:05:58 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id x4so6215442wmj.1
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 11:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O4U+IPm6wwBCRpajIFNeENCy2/QtAFa0dBn73KPuzS0=;
 b=N9DcK5Q5c7dscVTCmHncEZHvn9QX4LIQaYHTtnxcIQKGlCtdhSrUgAhl0wMSl+iurf
 6qigTMAIFf3Yitgkkd+sYYo6Fh30a+MNeVvFsP8AOi1DSiiu2AUzZbyAzDO53C+M7mPt
 2PXCZmav3ZFOA41sUWI26R1eWAkpMX9btDsJAlucku1yMp0dZvvu8ehgisWPK9DwuvO4
 uTwVoTSvll/dgvx4vbUyVpc2D+5o7VPOzWn6KiSr+2CkGQwnREuI9xqOJ70CUnyaf7Gb
 Q1kQojGVlpukIr2KkNux5t4b3whWlEIRZi5LOcsyeeGI8OV9k3P+aylBTRtuHEIgUlak
 q5jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O4U+IPm6wwBCRpajIFNeENCy2/QtAFa0dBn73KPuzS0=;
 b=ZQDv7uTwvSM56ASvpLOL42OwBRR8lPHC86nYJOabDNG5IIWok68s5Tz/Tqxy/nmoC3
 SUgRAMIIGgnPzmxO7Sr1bTe+53onwb4SrcMRmwsA5l5hqtFesRjqnajyb1am9kQcnAsN
 mhodTWsLkHC+Xe/libq3rDVevKBOPynItaizg3U/HZ69afLkHwodMfgeFRcrvGy+x1H8
 yOifbglI+Q/6fOce6cHOH60P/cjCXGu0V5/U98tLIMqzADKmIw0Qt3PWVobZ2x/odqrI
 mBDg/mz1UwVGQifDEyNtiDN8tpiDIsv+4dyZfrKI9BzplH5n9dD26gVVYBJ1wGStaD/M
 WBxw==
X-Gm-Message-State: AGi0PuZhcbLR60lTbfrdv3JzhSK8k+6zj8/9Imgjj8G7qv0otfLKK/PN
 Ra9eJ4ddXQ9K74oEgf3VfXc=
X-Google-Smtp-Source: APiQypLoEkLQ5045RR7fd8D/nO+e0Qs985sAMMqOSmX3Xm1GzaQ8OBi0O1N4jaHnsPyR1rgZQ9001g==
X-Received: by 2002:a1c:2002:: with SMTP id g2mr8755746wmg.109.1587233156597; 
 Sat, 18 Apr 2020 11:05:56 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id
 l19sm12514363wmj.14.2020.04.18.11.05.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 11:05:56 -0700 (PDT)
Subject: Re: [PATCH 2/2] staging: vt6656: Fix functions' documentation
To: Oscar Carter <oscar.carter@gmx.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200418123659.4475-1-oscar.carter@gmx.com>
 <20200418123659.4475-3-oscar.carter@gmx.com>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <adc4bc72-5c80-e8f4-8d48-052109ae18b7@gmail.com>
Date: Sat, 18 Apr 2020 19:05:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200418123659.4475-3-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, "John B. Wyatt IV" <jbwyatt4@gmail.com>,
 linux-kernel@vger.kernel.org, Stefano Brivio <sbrivio@redhat.com>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Actually I don't really think the function descriptions are needed at all the
names of the functions are enough.

card.c needs to be removed the bss callers to baseband.c, the tbtt's to power.c
and the rest to mac.c

Regards

Malcolm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
