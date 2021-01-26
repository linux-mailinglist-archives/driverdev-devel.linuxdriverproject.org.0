Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 415A0303D68
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 13:45:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7066486798;
	Tue, 26 Jan 2021 12:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MF93vDOXawGm; Tue, 26 Jan 2021 12:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8568186770;
	Tue, 26 Jan 2021 12:45:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 635D31BF422
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 12:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5FADB87046
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 12:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XlQyLGLF05XQ for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 12:45:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5C6288703C
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 12:45:05 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id g3so9728536plp.2
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 04:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=9a81CG4SHOE28Bf8JJ1zvGq039y62JTzwIy7vae083Y=;
 b=ky0kWgI1LhXYaXsAmJ3DPyuoBYZMViZexpYgH+lpR2fKLFGoegxnu9/k3rbGHODZyk
 Yr14jWtSXW7v5rStY+WOtp92vmAz+CqAlEcMBJxOQ9Bc6GjQbc/+4kUd9iNE3tLWEb3G
 VVlFyl4iftXuDICb/Gg9Sz8lFN1hxhWZwgHLDGw4Kl7N1RZIdUSdtG+fu7ds1ah1OwVi
 djgCyNSy9SP1y1FVl7T9/TstnplOWbfR7P4Uo2pgV1Orns/GptBAzM512RQAnKJKaXHw
 9LEHAGFBou2Fk8FhC4h+8/uYPOP3zBGt00OV3ir+5PbX0F3vwhq2/pUDGfd/nU7lAA3i
 hOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=9a81CG4SHOE28Bf8JJ1zvGq039y62JTzwIy7vae083Y=;
 b=fGCmf4UKq3q+Wu9/SwIDR0ff7OcGNXdNF+G1D2bzcMFosArNrQsjriKqdug3IRDVez
 XzDzBzgfMWb9+RSt9hD9uIRbNsA5iqXl0F5K/r+xQdVpTB9vSNORsaUGF11xWLuW7nlx
 DDFowOGAJ7aOJqNiTKfCtFMW/EzABzDw/rDaDcxSAVpwbfws3Kci2NBXSKT1V0PKya2i
 NurvcE31RkCRbWDKtLCWtByOO2iXWRTKurn7xYLe8XPyzfHu1spCzn2l3o5e/1NR+Y0f
 oa/ZAGWRKIQBNNNoJJ0+8d1r4DHD5j1jt4Qhy83rbsuXtiD5IDJsWc1/FwjELsZbKnbL
 ZsKQ==
X-Gm-Message-State: AOAM530a3hoZkxM34dItHsMs9TVg/v97Bn61tn1ZYg1arIUFltES/cc1
 bb7nAm0Wn2JSvD5lRI9F22A=
X-Google-Smtp-Source: ABdhPJxiCb7QZ0TikxQ7E5YkT7Pg9cG8f+dof/LTW/qDOqRE5N2oICgGiXNuVElqx4NoD4DJGnZazg==
X-Received: by 2002:a17:90b:fd3:: with SMTP id
 gd19mr6134207pjb.129.1611665105027; 
 Tue, 26 Jan 2021 04:45:05 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id b203sm19214968pfb.11.2021.01.26.04.45.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 04:45:04 -0800 (PST)
Date: Tue, 26 Jan 2021 20:44:59 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2] fbtft: add tearing signal detect
Message-ID: <20210126204459.00002b7e@gmail.com>
In-Reply-To: <20210126081745.GX2696@kadam>
References: <1611564252-84205-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210126081745.GX2696@kadam>
Organization: Tyzmig-ryrjum-8kedto
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, gregkh@linuxfoundation.org,
 oliver.graute@kococonnector.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sbrivio@redhat.com, colin.king@canonical.com,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 26 Jan 2021 11:17:45 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> On Mon, Jan 25, 2021 at 04:44:12PM +0800, Carlis wrote:
> > From: "carlis.zhang_cp" <zhangxuezhi1@yulong.com>  
> 
> I was really expecting that you would fix this and Signed-off-by as
> well.
> 
> regards,
> dan carpenter
> 
I have fix this in patch v3
> regards,
> zhangxuezhi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
