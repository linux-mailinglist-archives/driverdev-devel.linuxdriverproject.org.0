Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA445A4C2
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 21:05:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 51B5720784;
	Fri, 28 Jun 2019 19:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t8nIeDrvS4SO; Fri, 28 Jun 2019 19:05:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6C4A220554;
	Fri, 28 Jun 2019 19:05:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B5BC1BF393
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 19:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 385DA81E48
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 19:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2qD-yTd_VMe for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 19:05:07 +0000 (UTC)
X-Greylist: delayed 00:07:41 by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 06B9B86880
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 19:05:07 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id i2so3752729plt.1
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 12:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=GEJr3AqvHre2EqiUp9wkeTIrlXFQndtx5Gxgp/CLC/Y=;
 b=XoArU2Aw8uy6yHzMzOQ8pchviB6L+RP4fgA/8H3T5PNGYyVaXqKQqTIwc7a4oy+fnV
 F1iR3tXMQ34FbQ+fE8PXhJfHqbNf+Sn8tcEf7KYCanV+dVUAQA5PC6ql/3/lkLjzI4Cv
 BT9bbsuFZ5wsJLWle1D+GKJmmk4aHobb+e2eY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=GEJr3AqvHre2EqiUp9wkeTIrlXFQndtx5Gxgp/CLC/Y=;
 b=hO816hYnDf0EQUFL13Rr1TMPLxoJlSj8v51ZB8OkB8XXd1b3AH/lA74T4ZKrEBlRCn
 RGl8PsmV6Mlsxq3PoPgEHvNBVwHGpnyEGIEKv3gSz+JJOsuTWud5WRJ2YLSgcpYjPyXA
 FBH5o8lvwvPQ3RCFnQrg7X1QA9Z302R8bgZMpADeXkc8RNwWvdko9QHY1JfdkdqL9K+i
 4gaBKvcly8qaPHAsssTR9oGnskXXNxeeZ3I78w4jimMHjekrkl63UAMfXaf/KS8EWETs
 aXNzv76g+mqmF2BvskZfF4WPBQdxDPIKFzLjZ19Fy2oVKtV6F63TZNBGm5J8dqiMrguj
 SCyQ==
X-Gm-Message-State: APjAAAVSnwG0MNL54coIwUWVlehxYSWHfSfauEwmXckmxxhMh+jqRcVr
 WzrNM3jCE78NF/InnUpI27YWfA==
X-Google-Smtp-Source: APXvYqxFoDW9J1n1b7IoCWK5H6zYvA3wRtWclaCyF1V0DeG5Vz04P8IhMaf+FOo/j1jTbYYohqE2hQ==
X-Received: by 2002:a17:902:aa03:: with SMTP id
 be3mr13363364plb.240.1561748246107; 
 Fri, 28 Jun 2019 11:57:26 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b15sm3008737pfi.141.2019.06.28.11.57.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 11:57:25 -0700 (PDT)
Subject: Re: [PATCH 2/4] lpfc: reduce stack size with
 CONFIG_GCC_PLUGIN_STRUCTLEAK_VERBOSE
To: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
 Dick Kennedy <dick.kennedy@broadcom.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20190628123819.2785504-1-arnd@arndb.de>
 <20190628123819.2785504-2-arnd@arndb.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <3027eebb-e49f-6db6-ae0a-39a61c0e34e1@broadcom.com>
Date: Fri, 28 Jun 2019 11:57:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190628123819.2785504-2-arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Hannes Reinecke <hare@suse.com>, coreteam@netfilter.org,
 linux-scsi@vger.kernel.org, Wensong Zhang <wensong@linux-vs.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, James Morris <jmorris@namei.org>,
 Silvio Cesare <silvio.cesare@gmail.com>, linux-kernel@vger.kernel.org,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 Simon Horman <horms@verge.net.au>, netfilter-devel@vger.kernel.org,
 netdev@vger.kernel.org, Willy Tarreau <w@1wt.eu>,
 "David S . Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 6/28/2019 5:37 AM, Arnd Bergmann wrote:
> The lpfc_debug_dump_all_queues() function repeatedly calls into
> lpfc_debug_dump_qe(), which has a temporary 128 byte buffer.
> This was fine before the introduction of CONFIG_GCC_PLUGIN_STRUCTLEAK_VERBOSE
> because each instance could occupy the same stack slot. However,
> now they each get their own copy, which leads to a huge increase
> in stack usage as seen from the compiler warning:
>
> drivers/scsi/lpfc/lpfc_debugfs.c: In function 'lpfc_debug_dump_all_queues':
> drivers/scsi/lpfc/lpfc_debugfs.c:6474:1: error: the frame size of 1712 bytes is larger than 100 bytes [-Werror=frame-larger-than=]
>
> Avoid this by not marking lpfc_debug_dump_qe() as inline so the
> compiler can choose to emit a static version of this function
> when it's needed or otherwise silently drop it. As an added benefit,
> not inlining multiple copies of this function means we save several
> kilobytes of .text section, reducing the file size from 47kb to 43.
>
> It is somewhat unusual to have a function that is static but not
> inline in a header file, but this does not cause problems here
> because it is only used by other inline functions. It would
> however seem reasonable to move all the lpfc_debug_dump_* functions
> into lpfc_debugfs.c and not mark them inline as a later cleanup.

I agree with this cleanup.

>
> Fixes: 81a56f6dcd20 ("gcc-plugins: structleak: Generalize to all variable types")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/scsi/lpfc/lpfc_debugfs.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
>

Reviewed-by: James Smart <james.smart@broadcom.com>

-- james

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
