Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2046125271
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:44:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0539B85FD7;
	Tue, 21 May 2019 14:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ocXVO4UZKYhh; Tue, 21 May 2019 14:44:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD07585F31;
	Tue, 21 May 2019 14:44:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E59CD1BF4E2
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D994A8698E
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qCoJGp9XIW8S for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:44:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75E8786940
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:44:43 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id s11so9179063pfm.12
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 07:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=20boaGcuTy2P/q/l6C6tvbRVOXzptyGwu2wWe12RiuQ=;
 b=s+OBR2IKJQaoUQq9TkWY3iZcIs8e6aYEI+r9wKvUEcT6UD/19KTdDki3T0NaS/oTlM
 +AUNS/lE8i4+X3nMObC/Upl34o0z9IlyvRG0n4jyNjZFynpQi/uD3z1Z9bJ3kZo16giQ
 MNN9d/C2fQPFOeT54uoP1ys/ZyhVBmjq9jTpCe3LIi4CRhkRY+4cptVb3DdmWhdxZYGb
 2g0jKE4pArWrk05EE5w72g/dRPpSAPDInuTQ0R3ygjGVRXeK8/g3w6ihdS7zoPG9f4K9
 W1JIirwgP/gPga5Goqo5K/COqR4A3ngSLo8IhdDzo/fnMdqPzvGvR8ZGCzMD5xmpBTrB
 TYrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=20boaGcuTy2P/q/l6C6tvbRVOXzptyGwu2wWe12RiuQ=;
 b=pB3gyfWwiaevQhu6OYnKmS8FDhQ+elRx8aIDoLWMwFFC94UMOn4x44owZWAU0hN5yf
 UzILiTv8OzGxK6+Ll2vYb9drvFtNezVAExh0RxC/0H4USWaUeWkno13o7GpjEKiTY1Dp
 ubBNqb/G8eYfzZ0wSeNJ1lXGCpptyrVDfx2t1f024xXX7gKLw5pd26sZGZP6PMl7EFTx
 ePsjhNKYFfZqoDFMK94BAcFj7faChDsofZeePh+y9RZS/YlhMruxF0axbU7jVJ1VVpY5
 MTqwoaIZ46V7sk3MZkFWrY0NgQk0t/YIEsbzMIN9pfHbT78UaOoZ+F5ksmRwgEkIBlpa
 o0IA==
X-Gm-Message-State: APjAAAVbL4Eg5nawZ3QvIJBUx+S9/MNtUiTqkpnnKdytlVurjpho01pD
 3dV0JYu6ML3D6ryIronJvBMZYHQ5TgCAAGptZUo=
X-Google-Smtp-Source: APXvYqyA+fanBPthrAZNEO/42AAbNH+ShAhflMTvjT9+edDFR0bIUpIat8IciWUEhLHFshzc8I4kS1LFJgVULD5dpK4=
X-Received: by 2002:aa7:8652:: with SMTP id a18mr85823169pfo.167.1558449882753; 
 Tue, 21 May 2019 07:44:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190521142009.7331-1-TheSven73@gmail.com>
 <20190521143730.GJ31203@kadam>
In-Reply-To: <20190521143730.GJ31203@kadam>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 21 May 2019 10:44:31 -0400
Message-ID: <CAGngYiUagiM1qhiZyZ_BVACib-Mfk1wniq-CxZAC21F5Zni1wQ@mail.gmail.com>
Subject: Re: [PATCH v3] staging: fieldbus: core: fix ->poll() annotation
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Oscar Gomez Fuente <oscargomezf@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 10:37 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
>
> If you're resending someone's patch, you have to add your own Signed off
> by line as well.  Everyone who touches a patch has to sign that they
> didn't add any of SCO's all powerful UnixWare source code into the
> patch.
>

Thank you Dan, that's very useful to know !

Sven
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
