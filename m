Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBD418ED3B
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 00:18:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F8C488909;
	Sun, 22 Mar 2020 23:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E8ZwRsRmgBaq; Sun, 22 Mar 2020 23:18:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4E26887EA;
	Sun, 22 Mar 2020 23:18:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A5CED1BF591
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 23:18:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9FA8B87C94
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 23:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsQynez26Ehr for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 23:18:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0580187C83
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 23:18:15 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id np9so5254914pjb.4
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 16:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sAqNs7cLCNrJManKOoO5nJSc+vgXtk4yt3qmrV/VGSA=;
 b=HIp+rh9WJhP9XJ05dPnVLE6lGZZVOrktfOxFWCcQc6e+ITUiDnTHi7eVBHR+gqTpz1
 9E3jTzzgeo75fyj4YLXAKf43uYVdNqGlHsRWqpJqRGfJjb40PH/6cTyUF1nW7q9dF7Lh
 mVN1aweTD8A8eZagP0n40qUi52I+bbuwsKLRGB4QuwuqJfu4A+NVxrIEp779rGyrp9b8
 PHpzicfdVQHDOMxdmM/HPNdMb6K17ElTO2yxT1XFbYh1OMpDgaHtPnMpWthE4gQ2Jvct
 4j85JZzluxPclQWmXmX0txu07361+pzqsbxmdf1w+Gt2KhoOYFOd4fOWiau20nAZxlaK
 vEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sAqNs7cLCNrJManKOoO5nJSc+vgXtk4yt3qmrV/VGSA=;
 b=JxP08DErzgb15pal/EaTSxQ7Llqm/WLjsue8PPufR0IbWp+WaKRuGMjcAfvIz/GXyy
 /9rvOy5dYVFXan2+aUrerWlFkrW42thBxTHcueOUKT7x4AB8ia+PReVXl7fBO0F8V9a/
 laOKPaPQ458rralO2jBhIZLXb3xg2uoqz4rh/7Dgvojt3QOPmICZdDwDCnhkYAbuLj1A
 Jwr+2c5aA6lb2X5bK1gjkxalfpxK9aFYYIRHVxMR7y6CXxfJM9HNOW5SACZQo77tTO+e
 WUH+9xByBBlBT/qi43ATjDGXPpRF5mfz1e73yfrHAxOFLYfj/n+qN6UK78kc258eVCtI
 Iz4Q==
X-Gm-Message-State: ANhLgQ0ep7ui18WnOo+pjkI+IooLRZa/oKTMpczqaCOKpq4oy9t2+ntH
 rOHmeb3dAHJ8NfT0+ic7//o=
X-Google-Smtp-Source: ADFU+vvdLVqHMNFGHPUVUc1e14qG8smozDKMLnqvr/DxMD5yvtO27wPyexteJOp/73/BvjTEUcO7VA==
X-Received: by 2002:a17:902:694c:: with SMTP id
 k12mr18968806plt.173.1584919094450; 
 Sun, 22 Mar 2020 16:18:14 -0700 (PDT)
Received: from Shreeya-Patel ([113.193.34.113])
 by smtp.googlemail.com with ESMTPSA id
 z12sm12403521pfj.144.2020.03.22.16.18.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 22 Mar 2020 16:18:13 -0700 (PDT)
Message-ID: <f2b4f7f38a8a490ffc917f7199099ac95656c8c2.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 01/11] Staging: rtl8188eu: hal_com:
 Add space around operators
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>
Date: Mon, 23 Mar 2020 04:48:08 +0530
In-Reply-To: <e40d49aaa96a61019804255c2990d229b2eef7dc.camel@perches.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
 <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>
 <20200322112744.GC75383@kroah.com>
 <e40d49aaa96a61019804255c2990d229b2eef7dc.camel@perches.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-03-22 at 08:09 -0700, Joe Perches wrote:
> On Sun, 2020-03-22 at 12:27 +0100, Greg KH wrote:

Hi Greg and Joe,

> > On Sun, Mar 22, 2020 at 03:51:13AM +0530, Shreeya Patel wrote:
> > > Add space around operators for improving the code
> > > readability.
> > > Reported by checkpatch.pl
> > > 
> > > git diff -w shows no difference.
> > > diff of the .o files before and after the changes shows no
> > > difference.
> > 
> > There is no need to have these two lines on every changelog comment
> > in
> > this series :(
> 
Yes I get that.

> In my opinion, there's no need for a series here.
> 
> Whitespace only changes _should_ be done all at once.
> 
> Whitespace changes _could_ have changed string constants.
> 
> So noting that the patch in only whitespace and that
> there isn't a difference in object files is useful as
> it shows any change has been compiled and tested.
> 

Joe, I feel the same thing, there is no need of a patch series
for it but I was given a suggestion that it becomes difficult for the
reviewers to review the patch so it is good to send a patchset instead.

But as you said, we are testing that there is no change in the object
file so we can go ahead with a single patch for all the whitespace
changes.

If you feel this is right then can I go ahead and send a single patch
for it? ( need your or Greg's confirmation before I do it )

Thanks

> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
