Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA9A435011
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Oct 2021 18:23:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A420460BFE;
	Wed, 20 Oct 2021 16:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IKk5WzOyNAzp; Wed, 20 Oct 2021 16:23:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A2DE60BC2;
	Wed, 20 Oct 2021 16:23:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B11161BF372
 for <devel@linuxdriverproject.org>; Wed, 20 Oct 2021 16:23:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9ADCD83A64
 for <devel@linuxdriverproject.org>; Wed, 20 Oct 2021 16:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id taRVSmIrtKYN for <devel@linuxdriverproject.org>;
 Wed, 20 Oct 2021 16:23:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com
 [IPv6:2607:f8b0:4864:20::229])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0DFF8837B9
 for <devel@driverdev.osuosl.org>; Wed, 20 Oct 2021 16:23:26 +0000 (UTC)
Received: by mail-oi1-x229.google.com with SMTP id y207so10234716oia.11
 for <devel@driverdev.osuosl.org>; Wed, 20 Oct 2021 09:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:in-reply-to:references:from:date:message-id
 :subject:cc; bh=AT2vVSkbs5Z2AlPH3lVSxISBm4g33VFLgVGD3BjUf+w=;
 b=mkaE/MKQ0JMp1NU599OZ9ecl3VPXuBlg+H87IWgpfKZHQvjLJK4jQeIRSR/yWkv9tl
 0TZ1EZlM2jKgBPPn2Y2HyZH3TMy+oyyFOSOJn8lVDtDwe915I/rXwht6hJT+rpAjWGlI
 XwNX/+eqdnxQaGPrZE1OsslMgaQaz3jjzGuNG3CskrIoMnvara+BEYVcGFbIrN9HsOb4
 53TA6JCZ/+NKf4NbQEJRcf/rsasxM6o9/L0ciRzPp2YCUW61Xqw7oIyw5er3iPbOPCzX
 jBWGpBRgu91mkCjIOI9ZeYkgVKNPCnGB84UjDzGCfXAnQV18Dnx6fJLPowEptfkvs39i
 dsTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
 :from:date:message-id:subject:cc;
 bh=AT2vVSkbs5Z2AlPH3lVSxISBm4g33VFLgVGD3BjUf+w=;
 b=QFJ8OEt0rvSiSTQaNZll1P5YtR7kxgg4deLWagggVV7yvvQ//ao2/r4AjiCoOBzttl
 NazAXoLdBKrDxlklPkKb2BpDaCAksDY/qjvw+h7qTBdoPKHKuLaKDZPapzaTppPykP53
 47EECbiU5JP9TIm+Dko3QpofQJVHDV1omynQUeTHofl2sHDjkpNog0UxtbvzC5gGHJGk
 Pt/4VNx8VFhg0/Jt0WtQ4UaqljLwcMnBgExNJB+/tC5H+HeUmfYHGstptjDozzykOfb1
 a+lvBBDdjGMNXGHMILmsMsxCTtYq8usji3J8yl0sOJRCGLh11uAjBiSfJJACvx3rnn6v
 4aMw==
X-Gm-Message-State: AOAM531dD94S3UgQnoIFTWgl6Tvn7wxYq5c8hSGFAscuCLBnxBSLxr9Q
 QrianGj7nFTn/LA26u7iW2BtTNV9/W61COsIX9E=
X-Received: by 2002:aca:de8a:: with SMTP id v132mt263197oig.61.1634747006123; 
 Wed, 20 Oct 2021 09:23:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:135a:0:0:0:0:0 with HTTP; Wed, 20 Oct 2021 09:23:25
 -0700 (PDT)
In-Reply-To: <CAA4TxLDz4QdkMUtsnz1yBKcUHC_rsSXkNSuKTZxbUdzg7MutQg@mail.gmail.com>
References: <CAA4TxLAoac60T4CLbGWOAwWV2-rqtM0vPrZqfF5peXao6fbUpw@mail.gmail.com>
 <CAA4TxLBLX0hRO=AqfEb=kHbYnZosgyCwFfaB=g4tG4zfGhuNhA@mail.gmail.com>
 <CAA4TxLAj9kudu7nCegcu-toUZmnfzrTsYtH7TrzhxndHVppa_w@mail.gmail.com>
 <CAA4TxLCtrabHELYHafrHUxKhHiyHG33mzZqx9Vj9Kg8hhQB7dw@mail.gmail.com>
 <CAA4TxLD6XnqWj9e7MURB_i47RvZ-qOdg_Mo6Y_dUCkAq1ZfqGw@mail.gmail.com>
 <CAA4TxLCPb61cL_P8ngN2ZM6+dO3vev4VMki9BXwtXqkeRC6U=Q@mail.gmail.com>
 <CAA4TxLB+V1rn3rjeiQxyUVOySS-S2968FWFyfre+80kjx_3rMw@mail.gmail.com>
 <CAA4TxLBY2tf8p0N1U62cXXOzeU2g80KXcM9YJE-K-Z6tWGcNfw@mail.gmail.com>
 <CAA4TxLByV1_KRgk4bG=O0TWrwvBRdejOzKMX4ufhSbZifppxBg@mail.gmail.com>
 <CAA4TxLCn3jH+bUgOko7s4vqnfT04xWAECVV49cL1XGG++DKxRg@mail.gmail.com>
 <CAA4TxLC_mUNsr4FD3skH0DyY93yEDgtwqaRKwDHFswm6pyDeRw@mail.gmail.com>
 <CAA4TxLDwFboCFRriSH3Kjiqe97UjBrv++Y57mg9ha+GJabkOQQ@mail.gmail.com>
 <CAA4TxLA0kuy32uhn1cEdySmMovbey8eW4Vj++=e5KfW8oLvAng@mail.gmail.com>
 <CAA4TxLCmq=1V6tneSOYsFgy-41TjC8AvoruGBWoJnHSKfM56FQ@mail.gmail.com>
 <CAA4TxLCCMSr=3NOS7dzfbQVRpvvPmOfsayw2nFAvth5Qrtr78g@mail.gmail.com>
 <CAA4TxLDkmLPHKf2EAXmHmScObHr3Fx0_rv=6rz7Bnawy-tm6AA@mail.gmail.com>
 <CAA4TxLBRXuOd=n0NjKGfPKzG0BBpHf0dL3jZ=2ghxiiruoBZyA@mail.gmail.com>
 <CAA4TxLBnu6pw=vafU1XR9YAMeVtqLL1q7k8W5D4_T5rShtedog@mail.gmail.com>
 <CAA4TxLDpRVid-Tf-Ag0qK2Q7kdX89=ejNs-w=9DewmpyrWgqVQ@mail.gmail.com>
 <CAA4TxLCBYvUzj0YyPX3s2r4VYdcm0u9vie6fLv+JSj8WpzChew@mail.gmail.com>
 <CAA4TxLA9vA1TVqHx9Pvtf1UoNmN5OgbNQd+70UZY3GXpvExtOg@mail.gmail.com>
 <CAA4TxLAC-=yeK_rCHiD_rm9zLJq3PJSF6QNsDrfLWPvZzBHFhQ@mail.gmail.com>
 <CAA4TxLBjztCYzTiHcxzwKdYXpWuL-_RrR3hbTxYZXdEbxa=c0A@mail.gmail.com>
 <CAA4TxLADME7JYNo7HL5emYhyKurE23ArbMcjQ39XJF-n-00Srw@mail.gmail.com>
 <CAA4TxLDz4QdkMUtsnz1yBKcUHC_rsSXkNSuKTZxbUdzg7MutQg@mail.gmail.com>
From: israel barney <kristengriest098@gmail.com>
Date: Wed, 20 Oct 2021 17:23:25 +0100
Message-ID: <CAA4TxLC7Sep0k7-EU4kTnf=EqvmB=BYzEwqp1zRMq2FN1M-3zw@mail.gmail.com>
Subject: Greetings
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
Reply-To: israelbarney287@gmail.com
Cc: israelbarney287@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

do you receive my massage
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
