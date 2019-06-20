Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7454CDE2
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 14:43:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3C73F21FF6;
	Thu, 20 Jun 2019 12:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9iHLM1sEjod6; Thu, 20 Jun 2019 12:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 335BA2156C;
	Thu, 20 Jun 2019 12:43:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B231A1BF282
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 12:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD9CC2156C
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 12:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EO5c7g2oBHGh
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 12:43:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 06C1920505
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 12:43:47 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id l15so2555222otn.9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 05:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wj7YkGJezr8sijH4PU4NVyvrVTUc/c2Cc8P4aofWgnQ=;
 b=ilkChvJ0/HHjY8y7ovxtB5EpIJ6j0W9QyqOpMGYJ0xnp/K9WQmdtkj901fig3uRpTn
 1NgOpSPkQze0E44nn2hzD07FgLcedv8aY8MbHsW4VCp1i+vIz2PSxOyUDmMQ8tegArEu
 H9eV/UI/qn6EM+nFat0uxKTAMjdm9AxjeUaNmk7Vh9vD5BMmdLCGLml0tFk6rk2HHh2V
 hiCgkgJGKuH+XGzZh/WHijsqZm3DwF6YGBBhxpMRTiHe7bhq9BReyVYXpg/kyvoTMsuG
 HJKa6EsH6xsQ8qd+D9aYAJZ3h0FmzeCAB4j3T4gTAJ5+tQmIIGyCkxvyWmBdIedAUfck
 cxsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wj7YkGJezr8sijH4PU4NVyvrVTUc/c2Cc8P4aofWgnQ=;
 b=QFVsvvBBIjacvnm4cZOkcskjQKtEm/SarFfRSZa35Pk9p7XK1a/ZempRx/qidhuAFm
 otDtgSbW3PX7YF528QbU4R3QrrMWmqV6SN/HjR3po5Qs4azNpxne3cvSGpWh8dx7G3G2
 fZ5en6AXBw3xOMMuE/vpwW6jJsbRm7cDIpWCSt4Rg1AZi/Ds0R5RgTIjtJucfMU2DK0f
 x7kW9CrAwfvsGytDB+AzohDjgn7UvPxJEP1DHWh6dPC35cJf9U8sTwddGRzkqs24RNcq
 2+X2YS6uzrlupkQAW4KGIMs+zD9/Y4MVzdLZE1uW9w4tmMopMCZRSEUAr90+vlCDK/AA
 7ebw==
X-Gm-Message-State: APjAAAVGMvqeA506zpXlBuTfNY3WVkjoX26RtTanD673W3K3D+7h4A30
 /NKgIRoNHvtFXF0/cNv0MzYc8OD1lUnwpYjqXLM=
X-Google-Smtp-Source: APXvYqwn/rUNhVuAsgloJ8iiCVV7LayUBhTAt3vzUHWeIe9ShnTa+VdacvZCHrb6Poy8b7cGTuWuitmJ9C3v2QGeRZE=
X-Received: by 2002:a9d:12a7:: with SMTP id g36mr27575628otg.310.1561034626208; 
 Thu, 20 Jun 2019 05:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
 <0bedcd6b-4781-ffd2-b59c-76cd555912a7@kernel.org>
 <CAMhs-H-Qn2aBkCHCCuJhFEGG=CvUix6UHsRZRzm5QhNd8S9BMA@mail.gmail.com>
 <20190620123100.GA19733@kroah.com>
In-Reply-To: <20190620123100.GA19733@kroah.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 20 Jun 2019 14:43:34 +0200
Message-ID: <CAMhs-H8QW3WGRh4C0MObvYy54sOpQStfSN96sEyCt2Y41BnNjw@mail.gmail.com>
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Use gpio perst instead builtin
 behaviour
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: NeilBrown <neil@brown.name>, driverdev-devel@linuxdriverproject.org,
 Greg Ungerer <gerg@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Thu, Jun 20, 2019 at 2:31 PM Greg KH <gregkh@linuxfoundation.org> wrote:

[snip]

> > Ok, thanks for testing this. Let's apply this patch series first.
> >
> > GregKH, can we also apply this for linux-stable? kernel 5.1. Should I
> > sent anything else for that?
>
> Which specific patch(s) are needed for 5.1?  What about 5.2-final?
>
> How about we just merge these into 5.3-rc1 and then you send
> stable@vger.kernel.org the git commit ids that you want backported to
> 5.2?

For me is ok to send the ids to be added for 5.2, so please, add this
in the way is more confortable for you.

>
> thanks,
>
> greg k-h

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
