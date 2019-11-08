Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A11F5A0C
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 22:43:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1393586FFF;
	Fri,  8 Nov 2019 21:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6MQmqFSUSUvh; Fri,  8 Nov 2019 21:43:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B01A586EAC;
	Fri,  8 Nov 2019 21:43:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 690591BF990
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 21:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4EACA23B2B
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 21:43:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O7ydIiGmk+Fg for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 21:42:58 +0000 (UTC)
X-Greylist: delayed 00:09:13 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by silver.osuosl.org (Postfix) with ESMTPS id B307B237C8
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 21:42:57 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MXXdn-1iQ6AP0R4R-00YveV; Fri, 08 Nov 2019 22:33:06 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Subject: [PATCH 00/16] drivers: y2038 updates
Date: Fri,  8 Nov 2019 22:32:38 +0100
Message-Id: <20191108213257.3097633-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:cC60oL5qW9T6f3VnEX4IUPUnbZtH58Z5jHTCkfEP3lSVCyJMvvf
 nXa+3lb+MuvX4UyJFUN+jNUJOtYV6vEdBeRluSdOxKcMLTIRW/MA2X5WNg5vjL4h5VMaMqq
 bNkxydHkOOB1gWSeiigewsSsL+Ope/gjBqLstKOktXFNHvIvAI8OyB16Bh3/KHWq5bI5gbP
 ttyknhIOC7MVt+zSJY39Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:5jQbtdfzcj4=:RnyJUGIamtYUR32gZjgFxZ
 A58onXp4NOUdmESgNh0FJcJNwdIigFoifHmFMoCdgsAHwrANnqg84/6GFc4fR66xngOSjxW8E
 mUXN5xmbPaGcLDMSTN7U3kVyeVl314jkZeiDUaKSkoL29/7Ik3zEhj+4TJkkZ98+rkd5gjawr
 mPZjV20RoG05jtv+a9sLwcbqduudFwMKWky0LgF+UWAp6KALxGvqRMtKij/C0dGOAtPHtXjn9
 jLOGdH2wRDxm4MevgucscvmAOSLubnEc3QRm5/QsqxgDDXZTqoDPuOfXLfplyHlKYz5M8aUV1
 II/40/WLpwrX2M1u//jWLOl8IPkOxLSgFsfCKurYPp10UqKwtYZd85/+vo1M5ZsoL+S+FELAh
 vzG82YbCoa41t2xGV+QjZb7y+o8E4lM5fE/TsV2LI26hQdjiy+tr98aAJ9JWVTD0WVUL7IjxV
 SXTfKqqLdGvvfk7fRcDQW8BF2TasouAZdfIvia4cEye1z+U/fUhGYrdd7Zg18EKkqKlWx5rtZ
 olghhJk1DwQShBj+0K82RNjx+0/Pa/JOxGeOkM6y9oJzMaxAkzaYqrxpvzmy/m7eWh71ibssM
 7LfURdClVCaW+nHxggwTtCKnvn9u4b18A5myvq4zva5h/XiwhDLyZkw6kSXHLqChggjYbTRD9
 GnmRyXnbjHTHj0BaK+Ax3tuhpFHxM7cKWRn8qGVMLBRkSlAsryys+LiR03Aekxh4AxAiZMYxJ
 XFbh+/ppaYsd17sLuVZd4UWpSaCL7eDqcM+SB/ae7We87iO2k5eoYZuL+CXUxBtgkrcbR9k67
 /p1vmUEVxqwpuD53Wl+rjSPM7EVswRZtSXse5OM03qXguoKAO6TkOEq8XhhxeoP5HE1cDGE7A
 gNzRt/ivOC+74lIYg2tA==
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org, jcmvbkbc@gmail.com,
 edumazet@google.com, netdev@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, devel@driverdev.osuosl.org,
 richard@nod.at, kadlec@netfilter.org, cluster-devel@redhat.com,
 ccaulfie@redhat.com, coreteam@netfilter.org, linux+etnaviv@armlinux.org.uk,
 pablo@netfilter.org, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, jdike@addtoit.com, linux-um@lists.infradead.org,
 etnaviv@lists.freedesktop.org, christian.gmeiner@gmail.com,
 teigland@redhat.com, viro@zeniv.linux.org.uk, tglx@linutronix.de,
 sean@poorly.run, hirofumi@mail.parknet.co.jp, willemb@google.com,
 valdis.kletnieks@vt.edu, rfontana@redhat.com, gregkh@linuxfoundation.org,
 fw@strlen.de, linux-kernel@vger.kernel.org, robdclark@gmail.com,
 stefanr@s5r6.in-berlin.de, netfilter-devel@vger.kernel.org, daniel@ffwll.ch,
 jack@suse.com, linux-fsdevel@vger.kernel.org, freedreno@lists.freedesktop.org,
 davem@davemloft.net, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These are updates to devidce drivers and file systems that for some
reason or another were not included in the kernel in the previous
y2038 series.

I've gone through all users of time_t again to make sure the
kernel is in a long-term maintainable state.

Posting these as a series for better organization, but each change
here is applicable standalone.

Please merge, review, ack/nack etc as you see fit. My plan is to
include any patches that don't get a reply this time around in
a future pull request, probably for linux-5.6.

As mentioned before, the full series of 90 patches is available at
https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/log/?h=y2038-endgame

    Arnd

Arnd Bergmann (16):
  staging: exfat: use prandom_u32() for i_generation
  fat: use prandom_u32() for i_generation
  net: sock: use __kernel_old_timespec instead of timespec
  dlm: use SO_SNDTIMEO_NEW instead of SO_SNDTIMEO_OLD
  xtensa: ISS: avoid struct timeval
  um: ubd: use 64-bit time_t where possible
  acct: stop using get_seconds()
  tsacct: add 64-bit btime field
  netfilter: nft_meta: use 64-bit time arithmetic
  packet: clarify timestamp overflow
  quota: avoid time_t in v1_disk_dqblk definition
  hostfs: pass 64-bit timestamps to/from user space
  hfs/hfsplus: use 64-bit inode timestamps
  drm/msm: avoid using 'timespec'
  drm/etnaviv: use ktime_t for timeouts
  firewire: ohci: stop using get_seconds() for BUS_TIME

 arch/um/drivers/cow.h                         |  2 +-
 arch/um/drivers/cow_user.c                    |  7 +++--
 arch/um/drivers/ubd_kern.c                    | 10 +++----
 arch/um/include/shared/os.h                   |  2 +-
 arch/um/os-Linux/file.c                       |  2 +-
 .../platforms/iss/include/platform/simcall.h  |  4 +--
 drivers/firewire/ohci.c                       |  2 +-
 drivers/gpu/drm/etnaviv/etnaviv_drv.c         | 19 ++++++-------
 drivers/gpu/drm/etnaviv/etnaviv_drv.h         | 21 ++++++--------
 drivers/gpu/drm/etnaviv/etnaviv_gem.c         |  5 ++--
 drivers/gpu/drm/etnaviv/etnaviv_gem.h         |  2 +-
 drivers/gpu/drm/etnaviv/etnaviv_gpu.c         |  4 +--
 drivers/gpu/drm/etnaviv/etnaviv_gpu.h         |  4 +--
 drivers/gpu/drm/msm/msm_drv.h                 |  3 +-
 drivers/staging/exfat/exfat_super.c           |  4 +--
 fs/dlm/lowcomms.c                             |  6 ++--
 fs/fat/inode.c                                |  3 +-
 fs/hfs/hfs_fs.h                               | 26 +++++++++++++----
 fs/hfs/inode.c                                |  4 +--
 fs/hfsplus/hfsplus_fs.h                       | 26 +++++++++++++----
 fs/hfsplus/inode.c                            | 12 ++++----
 fs/hostfs/hostfs.h                            | 22 +++++++++------
 fs/hostfs/hostfs_kern.c                       | 15 ++++++----
 fs/quota/quotaio_v1.h                         |  6 ++--
 include/linux/skbuff.h                        |  7 +++--
 include/uapi/linux/acct.h                     |  2 ++
 include/uapi/linux/taskstats.h                |  6 +++-
 kernel/acct.c                                 |  4 ++-
 kernel/tsacct.c                               |  9 ++++--
 net/compat.c                                  |  2 +-
 net/ipv4/tcp.c                                | 28 +++++++++++--------
 net/netfilter/nft_meta.c                      | 10 +++----
 net/packet/af_packet.c                        | 27 +++++++++++-------
 net/socket.c                                  |  2 +-
 34 files changed, 184 insertions(+), 124 deletions(-)

-- 
2.20.0

Cc: jdike@addtoit.com
Cc: richard@nod.at
Cc: jcmvbkbc@gmail.com
Cc: stefanr@s5r6.in-berlin.de
Cc: l.stach@pengutronix.de
Cc: linux+etnaviv@armlinux.org.uk
Cc: christian.gmeiner@gmail.com
Cc: airlied@linux.ie
Cc: daniel@ffwll.ch
Cc: robdclark@gmail.com
Cc: sean@poorly.run
Cc: valdis.kletnieks@vt.edu
Cc: gregkh@linuxfoundation.org
Cc: ccaulfie@redhat.com
Cc: teigland@redhat.com
Cc: hirofumi@mail.parknet.co.jp
Cc: jack@suse.com
Cc: davem@davemloft.net
Cc: edumazet@google.com
Cc: pablo@netfilter.org
Cc: kadlec@netfilter.org
Cc: fw@strlen.de
Cc: willemb@google.com
Cc: viro@zeniv.linux.org.uk
Cc: rfontana@redhat.com
Cc: tglx@linutronix.de
Cc: linux-um@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux1394-devel@lists.sourceforge.net
Cc: etnaviv@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org>
Cc: linux-arm-msm@vger.kernel.org>
Cc: freedreno@lists.freedesktop.org>
Cc: devel@driverdev.osuosl.org>
Cc: cluster-devel@redhat.com>
Cc: linux-fsdevel@vger.kernel.org>
Cc: netdev@vger.kernel.org>
Cc: netfilter-devel@vger.kernel.org>
Cc: coreteam@netfilter.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
