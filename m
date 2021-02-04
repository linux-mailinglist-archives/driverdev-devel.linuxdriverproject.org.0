Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB31830F565
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 15:51:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FC64860AD;
	Thu,  4 Feb 2021 14:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wrqSDZlBfzK6; Thu,  4 Feb 2021 14:51:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78E2585F8C;
	Thu,  4 Feb 2021 14:51:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 278FE1BF5A3
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 14:51:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 218A68553C
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 14:51:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mx--DhtTBGKN for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 14:51:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 438468543B
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 14:51:48 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id g10so3872109wrx.1
 for <devel@driverdev.osuosl.org>; Thu, 04 Feb 2021 06:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=1tKBbIR4fWGNy/DkjznXmDcn30clccCwDDnQOymnr5o=;
 b=lowTAP/p6H/c5T3jDMEClUYbkbotY60JVGaI4ih0IGq5VPn6yxxxQO+B62cZoMjiBl
 cv/HDKI2E4eQfXZsqaWD0iNTxO5wWBOFmgzWpR4FnZPir1hrncJjB9P9uhcEv0ivfiRW
 cf4FN7n9dg7Vf2Xqg8s0qYBUQ/sUA8eDK1T5wMLsORUsSMzp3kJWoHIbB/xKm87/bAKp
 zkiQW9MlF3ZXAlZC9sQ055QtC0X1wQOakhzbCjPsb1HlrIGtHjy2hZMmcien12IC7Ki3
 rgUA+6vlbS6ErQXr1G1k6rdFvivBJtX4PnduA9sm6C816RnKiKEspYSq3F/3Zp5k8lwM
 9b8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=1tKBbIR4fWGNy/DkjznXmDcn30clccCwDDnQOymnr5o=;
 b=I/eLEJ+1hQwUg7HK39BHO4yhOEr3PLGzSMHNhLxMTNceZoi+rkUA3ySgrNMU8KKK79
 z1WzKBmJ9IYa6Herm39Au16SPWF9xMh2xD03BXNce849lwFinKFTxsAvbGgftRy+3cbG
 CR2GZ1QKwp/aAj7FF3C/K0yN99b9JycKKemrQ33WYYbWAYFKRZaIYizabnQ5JfUUw+At
 qYrdkM9GrB2bz/KDK8A5bLCmW1zDa9Ez8VcZJfyf3miJI/2UHD1o8Ou7gDytslHk0nOV
 ZgkH+eteLqOTFSWCtkP7dytTnfY5UwjL2Hn94AFB/HZ6jW80vscoGINe/FRrJi3XnqEQ
 eHZg==
X-Gm-Message-State: AOAM5330h6eKcfBW42XKymv/FJW3lIbubmkPDubmLw9XXcxT61isV6L2
 TcRdnxsllmrGSVMz2UW6AkI=
X-Google-Smtp-Source: ABdhPJyVuSUWI6KjAL+pvJkLiegbo19gHvRJIW+dOyxIj8aGroNo8CIzFM4Hx8Sei42qQMHh5e61Vw==
X-Received: by 2002:a5d:538b:: with SMTP id d11mr10047459wrv.334.1612450306719; 
 Thu, 04 Feb 2021 06:51:46 -0800 (PST)
Received: from LEGION ([27.255.58.138])
 by smtp.gmail.com with ESMTPSA id n187sm6323450wmf.29.2021.02.04.06.51.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Feb 2021 06:51:45 -0800 (PST)
Message-ID: <3d1f36ebd3b59788a586e55bcaaad9705ecca4be.camel@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e, rtl8192u: use correct notation to
 define pointer
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Greg KH
 <gregkh@linuxfoundation.org>
Date: Thu, 04 Feb 2021 19:51:42 +0500
In-Reply-To: <20201028044232.qtzsnrrh7xgdzsoc@ltop.local>
References: <20201026121435.GA782465@LEGION>
 <20201027112303.GA405023@kroah.com>
 <20201028044232.qtzsnrrh7xgdzsoc@ltop.local>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> Sparse's warning is not about changing the definition of this member
> as if it was the argument of a function. It's about how can you use
> an array of structure when this structure has a flexible member.

We have the following structures in drivers/staging/rtl8192e. (I've
simplified them for showing here.)

struct rtllib_hdr_3addr {
	int a;	
	int payload[];
};

struct rtllib_info_element {
	int len;
	int data[];
};

struct rtllib_probe_request {
	struct rtllib_hdr_3addr header;
	struct rtllib_info_element info_element[];
};

static void func(struct rtllib_probe_request *ptr) {
	ptr->header.a = 1;
}

Running sparse gives: 
sparse -Wflexible-array-array flexible_array.c
flexible_array.c:13:48: warning: array of flexible structures

There are several such structures in rtl8192e and rtl8192u. I've been
trying to fix one of them. But it seems like more knowledge is
required to refactor the driver.

Thanks,
Usama



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
